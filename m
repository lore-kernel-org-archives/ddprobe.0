Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E1221363
	for <ddprobe@lists.linux.dev>; Sun,  7 Aug 2022 09:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659863453;
	h=To:Subject:From:Message-Id:Date;
	bh=ya9O2m2X4jmIVVfW70l3LPlyVrKVfR5Q2+/gseZHtfA=;
	b=P6o31/C0kVSRqjuaTwGMdDjkeGMzXju7mnHcIETjZVVCApGHbviuBDcgFYuFAOJg
	yJv8wiWwwZB2sAwPkboQTuj0ZeB/e1m5bRly1AoTx7tdrBpUPYGVPdAgB2Mc75wvctp
	rndfzTVcTpc7ayNooV/AlUB3/X/sn2yeo6Z2TGBw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659863453;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ya9O2m2X4jmIVVfW70l3LPlyVrKVfR5Q2+/gseZHtfA=;
	b=OUEviACHX9spxoRPCMAOymdpdShln+YOcLk2cbemv1QZ1cIBrXLfGCEryzES3dhg
	NaoYf9AZ8tn75qAqOsty9rcVj5X8otJ3ZH0s3NfIwRUt0WHdu0fXIcGidZT88m4cPUC
	VsoTbsM8mgpXMU/g6cPmPnEvxmE5EaC7rkH6A/jc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018277924bd4-e1d09eea-2264-45b0-a668-9566c2576172-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c5acddf7e7224b7b960e21789dcac003214995f6caefcb9dd3180f1ade848035
Date: Sun, 7 Aug 2022 09:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.07-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659863452
