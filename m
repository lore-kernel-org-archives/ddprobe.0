Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29F0315A9
	for <ddprobe@lists.linux.dev>; Fri, 20 May 2022 04:50:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653022199;
	h=To:Subject:From:Message-Id:Date;
	bh=y01cxyVMuZh1HSgkGCFszA+IIXU0QWOwTofGJxKNL+Q=;
	b=OpzCR3+GwVTx8SuWJXYPB6xNennA6kysbLvd/FbhrEi6g3onRrbIONPVNIWOuGSb
	rcm3l0oMUvLvz3moe8Xc8jFqPBzlktleG0LfL4X0FuUzbyNHPu9WPXnZ2Bma7hzbGbN
	I0j4T97dP18k3Vnbt1GrGyg6AGPmMpCjiRhQPkaQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653022199;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=y01cxyVMuZh1HSgkGCFszA+IIXU0QWOwTofGJxKNL+Q=;
	b=RHp4wAmel/9NIHqs15nzZNvVmwIPTvWjhOK+o0nW8yyWsSfmFQuUiO+vCuq5wwQQ
	m/d2c8Z7DziFdK0hYIOaGIAe3dXOqnbbSTnW1uAfA094SVCzCmG3KYX0u5cFthANYCO
	7eBk6w1Vq/Rc1PImCC6pNRo6EdcknDP9YHuu29w8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180dfcd0e2d-9ecaf165-69be-4646-ac42-005c35268440-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 37a06f2c2dcab6bc1f906f7d9c9eae4267fe84ade339fcf77ff60a90e48e7545
Date: Fri, 20 May 2022 04:49:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.20-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653022199
