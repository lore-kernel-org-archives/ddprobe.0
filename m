Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 873A01865
	for <ddprobe@lists.linux.dev>; Mon,  9 May 2022 11:01:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652094118;
	h=To:Subject:From:Message-Id:Date;
	bh=LQ0JAtEVC9ekBvkHDpCdmJKa98BeZX9xP+IYcxxs3jc=;
	b=al6ZdUBut9WrQtERBLnwNBgDE+79h7+FPGkdeJ4khQWuRuTlsIqr0P9emWpitJ4k
	Q/hs7Cg/aodSdTFpUFh4plYH5frOtTDPToKZyc2FwLLzvKP6Kh7Tvp0LYgHPdlcVdhK
	Eo2Cc/NZiVQtQkN2/QdXkVjGKkwfBRsNT/3+51LA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652094118;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LQ0JAtEVC9ekBvkHDpCdmJKa98BeZX9xP+IYcxxs3jc=;
	b=QwqDusKtKz1GrfIH/rXgj7XTmwNjBEj/eE2+C5URyQyWkzzoKKBCahgVt5HnPF6Z
	MaUSiKO1s2or0tE88eP6GSTLdiTylctvHkkGiHfXtJKNvanjxi6MN2omUGken4WMHXV
	vy0Jg+bsUuOZ23D9W72Dbsnstopv/vcQrmsHH1mo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180a87ba997-b37f308f-e47c-4caf-943c-f6ac3d44376f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d78cd7c683c1be887c0b686becc5ec2d29ef1d6f6f6d46e9638d7b20807b3240
Date: Mon, 9 May 2022 11:01:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.09-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652094118
