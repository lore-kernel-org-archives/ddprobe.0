Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7ACEA7EB
	for <ddprobe@lists.linux.dev>; Fri,  8 Jul 2022 08:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657267612;
	h=To:Subject:From:Message-Id:Date;
	bh=rns2sJjEaaj3/gpyarm5PtfIej3NLqalkTWwTzxA63g=;
	b=gsKMCCrr7DL2FUgIrvrmMbu0CsJSGaQTmN1wsgVn52T1CcVAhJbc5d3zvPLabhjI
	eAiepaA5CYVCO9B2L0F1FDVmxTE5vM/FZWvgrcpRHYataDkC5sSxH+6dEWH5Ehe9TYN
	KcCiVmVwQZdq0selg1TVkuIujJrYY1KLny3M6/pA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657267612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rns2sJjEaaj3/gpyarm5PtfIej3NLqalkTWwTzxA63g=;
	b=jGGBNAyUYzgz0I/fVHFnn4YBzGDPl2A50hj2LJgF9Sqdb8AGzg24LR/yKGu585HU
	X08OI5IvVaktUmyHzE4sUgBgaI3W+7o9ZEn1kdqlKfK90sUB1EpG5D+H4S6teccvqtE
	Qjpx8+vK+KvBf7IsclAueKUSlppOrDu85EB5kN1E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181dcd8eaa8-bebb7e39-8151-4f97-8d72-ec21da8741a5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a5d37376fbb092ac20ea8be5f273dc11d6fc0e5cf196e4698d43131566b1aee4
Date: Fri, 8 Jul 2022 08:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.08-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657267612
