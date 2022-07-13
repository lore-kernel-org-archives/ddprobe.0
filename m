Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8FE4C29A0
	for <ddprobe@lists.linux.dev>; Wed, 13 Jul 2022 11:26:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657711613;
	h=To:Subject:From:Message-Id:Date;
	bh=mmqP6KRQoJElXrNkpMrFU++i6F37krvwZQAZpbWapNw=;
	b=XOrcSw4B4+DJMW1ffJLzkADU/D7EZq4pRTpeU5QWCJDYokecxFkRxi5dzPNVAhNw
	Vn446rPb0fiWFe4NL7W6Q/6rSM5vSfnVYZfj20s1FdgUYIVCnpzsB2ZNx8xYp77r6Cc
	k01IXwxVCqlN1Q6NmEeLH+PEYp7U87KfM6D5x32o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657711613;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mmqP6KRQoJElXrNkpMrFU++i6F37krvwZQAZpbWapNw=;
	b=RIzwHzcZgy46DKiqHCxPa8SRji3YhdydopgmyFLvbA0jqaxZfzyjy62Z6x2jKUrl
	N3lRMTxYouL5ubClEU5U23Fh6QF9DftL603BEy7/H3qYi8aLY//zUUF0oXP9k3e5mTC
	UNQ2Ep259oWu+DKVohRQHQb/0ya8JLt9nXl/qIiw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f74fd17e-73c95b90-4520-4824-baba-b7ef07c93a69-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 830d98365fc453c57f69c10128151d09d8f030dc4616873b6818142d84bf22bf
Date: Wed, 13 Jul 2022 11:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.13-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657711612
