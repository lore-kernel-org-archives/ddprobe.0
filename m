Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BA70A2D
	for <ddprobe@lists.linux.dev>; Sun, 12 Jun 2022 03:13:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655003639;
	h=To:Subject:From:Message-Id:Date;
	bh=/MKqi6siH7CuOgLhT0tN2J7uee8frVk+o/bm8qFic7Q=;
	b=laEloFZqBoeO+W7E3Mb3Wl+dbzf0YrA+ssWzobPkPsaAVbNY3nklY7b+8GKkneUo
	oO3y7z0rn6YR/o0sDnJ7ukH8g2p1isCWaA/Ko2fWSMlHB5UBnj3Ugi9n89DaWqy34Ce
	m/njigtcz7iZ5G/d207qAJIsr15QlytaR79MInrU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655003639;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/MKqi6siH7CuOgLhT0tN2J7uee8frVk+o/bm8qFic7Q=;
	b=B7C1xLDtDpNKqI4Yf+CGBFnreZ2abHoOCUo/Kzz1dZdTAlOA5qmyW5FCqpJOBl3Y
	V6Hfl3MXnuHGpwnflYDo+I75MMVgyJA+Hx/FSaf/kFFXE3cZWb0IHUzBsd5y0OTrcdN
	Hd1r+P4NtP3ot/S7IhwPL3bwNGpbwUtjhgpHFdxg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018155e76dea-3c30621d-1cfa-4b9d-92cb-8f698a3293a2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 302082dbf02f1f8384f0ce578e33c9cc7fa28e4e4cd8de172ada4b7d2b31153f
Date: Sun, 12 Jun 2022 03:13:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.12-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655003639
