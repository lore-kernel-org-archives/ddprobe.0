Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10CCE7E
	for <ddprobe@lists.linux.dev>; Sun,  8 May 2022 18:52:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652035978;
	h=To:Subject:From:Message-Id:Date;
	bh=Fy1xbIMVMUaKUR9eK243bjtqmYkGPQqnmHqSo06bzWk=;
	b=DpCRcgJIy8E4dLBWuzk0dpPx4AA6y7X4VhGBVL9sCtUJzcBq0oX7RnlqEwjEhHBe
	oW5r5XEzxYI/CO83NqOZCi6dgxFTLZuI/zHSEqq3lEWzpvDuz4ENCbvbi+/3k104vFF
	Dxv0yT1bX0fQMrtO+AIZ9dJWg4NbK16wuYfU0PHc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652035978;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Fy1xbIMVMUaKUR9eK243bjtqmYkGPQqnmHqSo06bzWk=;
	b=hUqWz4lnT/qWztyQo67bORmPJGCGhXNgXMwtwhAZN45el61UQ2bx+t+f/1+iie8j
	GT5gbgmmGEH5xInNrRMN7N7ydBix6nMeZ0P+IEAjaardcsPaMxjTpyxM2ODLQOQorDt
	Ejdv87yIJ7lbVm2wpJrTuXY6A3N5hBqikssJAfnw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180a504841d-254e3004-8a89-42f0-8b52-be80b67cde09-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2f53e023c5aa79edb5e5d893490aa3a4ec63312279ff019c36d0f85da38ca3b5
Date: Sun, 8 May 2022 18:52:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.08-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652035978
