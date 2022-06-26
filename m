Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A08C7F
	for <ddprobe@lists.linux.dev>; Sun, 26 Jun 2022 00:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656203212;
	h=To:Subject:From:Message-Id:Date;
	bh=Glb07GEAWBNcbaSA2z+bNaJhbeQvIFPMspLhonxT+qs=;
	b=AzeUmkxag8dM3AcgrcPalFcmzxkpgBMX+CYV9cG/3Qn6tTNxfOGfg69B2/7uipIi
	ePhbPG19IdeWK9gsucE/GsUfm7hsypyhZRv+NFUrS1IV1UW+uCT/Lx35+yysLeysUP9
	sE1WybSFCf5fuRGxXvr+TxdcDlkigworymtsOabM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656203212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Glb07GEAWBNcbaSA2z+bNaJhbeQvIFPMspLhonxT+qs=;
	b=egsldNOugNWGpzF8Cbl789ioyrAo+X8HKAx+VsVcUyoPEC4fThThD6fX8bonZowB
	jpcEEqnLqqIsvgk6C+ZeqOJpYZI937wtacFZ17yM9thgzVD5CsctQN8nTBlNsiQBM8h
	9YQlkffVGXoyvRQO9dBH2o2w63dPB5azg5SYo370=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101819d677631-082b6ca5-7343-4a78-8893-472c6844fe8e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 481252d90ab82b3edc7c7da56397a08acba6bfdf1e06580e9257981f789f90cb
Date: Sun, 26 Jun 2022 00:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.26-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656203212
