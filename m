Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E1777B
	for <ddprobe@lists.linux.dev>; Wed, 29 Jun 2022 10:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656498412;
	h=To:Subject:From:Message-Id:Date;
	bh=pANB1+ppLcoOKScsstgQFbH4kQGCTnhJr7oIES1/Ma8=;
	b=brJv/MvHKQZvGdg3wfeRMwLCHixrKK0GyIpIgu9J0/ksL0nAJwLyeuxVtCqMUkDA
	k0Pxy+Blu9sjH7kO4Z4OHqo+/+sADUuQPTJkcEuIpqRFZML+0X0/AkS3fcP9ln/P8uM
	1PBkl+OWxKbKGFXA6hxqsQRtX729Y09Zqv9W2cV4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656498412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pANB1+ppLcoOKScsstgQFbH4kQGCTnhJr7oIES1/Ma8=;
	b=WuW97nHfBTvxE2czZWRtBgtOFy/rZetemywGaneS42E+/5VNfDh1CrTFB2VSLjZI
	c3ohDMvsrKoI0pKytKsXyRzMi8yOzZTjVUMJjbiI//wwcr5KpN/u2ORPai4FcpYWLXN
	IdTaqYiSCTOr8W8/+eduCl/ScxjvK4nli1JFMWjE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181aeffdb0f-0118afce-64f3-4c72-b390-4bb51372c61a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3b73b5432cae349fe3a2418088a72acdfffa77cb9fe1123786943511b94750c9
Date: Wed, 29 Jun 2022 10:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.29-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656498412
