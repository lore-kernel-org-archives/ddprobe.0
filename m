Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D86D7A
	for <ddprobe@lists.linux.dev>; Sun,  3 Apr 2022 22:39:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649025598;
	h=To:Subject:From:Message-Id:Date;
	bh=gto6vgvD9nvgQkEkerKQX10r+wq3l0VYTHEE1XyVMFg=;
	b=f9L0kgdyHRDyRpTgV5k/9ZwYpas8ayGpxGVSDzXbwf7EOv1fqqyem4XdWl0C/8Hl
	X87/lczZx2R3vR6yf+qYOJQ1rtOt2FhoGyG7XvFcwgjLUJepBboPG41rxfhI7JTT5Mj
	rapLM/3Pp0c6aHZQmlfGYuZrd66/NQMH2KzXkuKE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649025598;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gto6vgvD9nvgQkEkerKQX10r+wq3l0VYTHEE1XyVMFg=;
	b=UcUyiZTobSXSb0LqAjBzp4G4oJlGjKOYqpr/X9upyQ2nwZeHJy6yb0HkZNIglOEE
	sNaiFRvsZM3qHpoRFgOvBPUqqwfGr/OJ5I5UjjdycNxE827HI2oZW8oH+zHx04vfmWo
	QxDMg8t0WajcRYUqDNRQq8uDeBhgM+pvIPz4TvV8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ff195c324-1477a466-fd6d-46a9-ae28-b73eaefbdd6b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 953b98d8447a4bccfe49c506d83062238fda9e023dbad50ff78d9bd08f0c8317
Date: Sun, 3 Apr 2022 22:39:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.03-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649025598
