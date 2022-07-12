Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1057723A9
	for <ddprobe@lists.linux.dev>; Tue, 12 Jul 2022 05:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657604212;
	h=To:Subject:From:Message-Id:Date;
	bh=v+IAdTUuQ3HTRBhObcDD6l6p+x3V4SY9ViKzPDXTR7E=;
	b=ee28pivynyFU5b9FY3Z4RKKnoOqzFZt+0a/Vs/5OYpMp/NCM+EtfLg+KWl6Q41u8
	BKvLKSJAJOJuhtsw9mTrN+CS3BYR/CnrN1i7zX8nqRdgIsyL11WQvIYOY6XsPjhlhHb
	alAtAtmivkffPk+foGipLs5wDf0HvS3wt3m6q2QY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657604212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=v+IAdTUuQ3HTRBhObcDD6l6p+x3V4SY9ViKzPDXTR7E=;
	b=e0oEGoylHrYRmxnrTa9QRKtzsykCD3g2s9yZUg0ojUXNNAbLXUpt+lltanX8I4bv
	c0XkpFiOfBl0dUjCDQElyUavPOrraHZ9rQYEnqbql+4qVggrZyRiRmVex7Gs1KVD/DC
	fquPcnSE+3NhkiyV1eb+NV9ct6bI8reL29DpyEJ8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f0e90643-2d0bc46e-d801-4142-b1d9-de406f18faf4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 486aac015fcfe1c6df29ee799070f2dac41ae00ae98d1ac54eada1b7e21a6c22
Date: Tue, 12 Jul 2022 05:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.12-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657604212
