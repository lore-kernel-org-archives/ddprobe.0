Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E97228F1
	for <ddprobe@lists.linux.dev>; Sun, 26 Jun 2022 09:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656235612;
	h=To:Subject:From:Message-Id:Date;
	bh=qWpi3I3wG15ftkcolMaYb94na9x9801rM0+2VwV5hYo=;
	b=Kvlg/B5n2n+CJNK9mJEIJq5Zm85gNEMaxRSW1BIwiZWcQfxH4cNS2AUuWU4GONNv
	HhlyYJ38aU/Bs+Zg1qwpGBNEgZRaPSjOvyfDXbsxiu/sU+1Vg8wouA7BH5HCH/eQZCw
	CRnL5wuGLDnDT5fFFB1Z/BBPBzrplFQ5HFczQmkg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656235612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qWpi3I3wG15ftkcolMaYb94na9x9801rM0+2VwV5hYo=;
	b=bNkDZjQc+aA0RHdnsq5N1BG8rfKFyBiaNr2pkDwi0G+ABGCwRQBRGVxfdH9i+PET
	qfbZ7cyV9qpIBB6/2mL6ieXNYwwyptVsoU60Rid4QZIXUoDD6JVLQ0hpaHzGGeC/U+D
	57w4x8d9JdFDggF9fEncz6+bIEd7B0ZU/Ha6/o18=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101819f55d922-7acf1cb7-186f-4318-b1c7-86083db3d2d5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 847df1d0d6cb2230eaac98c7fdf4f74907b201da458f5eef50b15e967593bad8
Date: Sun, 26 Jun 2022 09:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.26-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656235612
