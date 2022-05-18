Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15B557F
	for <ddprobe@lists.linux.dev>; Wed, 18 May 2022 01:37:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652837879;
	h=To:Subject:From:Message-Id:Date;
	bh=8VJLSq+RdkyBtYtcMuj665Evt7SkEJMtTuCBODtLKsc=;
	b=euu2W49nGP+sBrgVpTlR6s5UcXNrdrqqw7dS521j9Y5/NwgcS3NtcZ+Cba8mAnQz
	srJSpZ8HFywa/ERnifH5wgyB3cSNeldYNRNfk2ES/ZCl998wNzAvK369hXHlCQ67Axz
	DLoI4xZoP2as6DxloGCGIbTwdLI8PegC42PFd4+4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652837879;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8VJLSq+RdkyBtYtcMuj665Evt7SkEJMtTuCBODtLKsc=;
	b=Zi0HmM6O9t/smWzJKsYC4lM8qHS7Ig/WTuEOwUHdVRvzwuJjF1IsIIatCHdAeFyU
	gVqlcEF77qVCxQlKPz3ydllN9Fx2Z6+KzSJCSP0qoOcQpiQOEXSQ58PdafLWih5p75a
	m84J+xgxMT0ELyrncuI79osPLrU7WH788oi/y8Ys=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180d4d08e48-030076a1-8dbb-4fa6-bac7-e582411d10d5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 16e04c56a7cde96c6460f30e8991eb776ebaea6e0573a6aa965c61cf9b6b0c2f
Date: Wed, 18 May 2022 01:37:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.18-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652837879
