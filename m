Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF7537A
	for <ddprobe@lists.linux.dev>; Fri, 15 Jul 2022 08:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657874212;
	h=To:Subject:From:Message-Id:Date;
	bh=ruDwHQCMGiZRvTC6Zsgo5RHpp2HuEifeuBk5gxHQ/q0=;
	b=YPflcb631ChIjMaiS93WUIsD3Tl3eKkguW1Tyq33HsHlTqFMq+aUigFBrQtKd72H
	vKDJ74YJ1NEKup0TyL+59GECj+QUBrPJuNPdjbRajgOhfuxkKRWOFH4Jvz1l89s35CF
	wFLWQndeB7MtPNVq33rfV7hID2fwkTCnD+PxOZ7Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657874212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ruDwHQCMGiZRvTC6Zsgo5RHpp2HuEifeuBk5gxHQ/q0=;
	b=EZ5bk/qSe03uI71EO3uFwBRfgGQg2gAtO52HwkQ8Neo/tosg6PR31jBTN79Pcr+E
	SP8CvpzEFCIFKNoSNrYOLmoqVYR6crV/PRPEoIwSDOG4sfyE6SC56QXa/Egc4XB1Cec
	gWxXRZ7S3JssLwtAV3ZOn9kgYZtU+tnEM7Oe6Z/Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101820100e5d1-84978f99-1bbc-4e9b-9dd4-01d509c8a935-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 820e3c4da67ce836c98403b8649085562911154157fa56aede732e3ac2c148e1
Date: Fri, 15 Jul 2022 08:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.15-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657874212
