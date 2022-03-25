Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0B8C4698
	for <ddprobe@lists.linux.dev>; Fri, 25 Mar 2022 08:41:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648197719;
	h=To:Subject:From:Message-Id:Date;
	bh=y7JPmE9/IAjUOvz3YEJj0KuvVxLVJBW66kWIZHLQOY4=;
	b=OxrSxdist0B3wpJA6D50TTLvUP/VEGhT7Z2XLl3FAGeKlVhHhhd314+eHITtvQYb
	pUFvZmYVgJH3+lGnRB011Zc5OYZ2XsvIl3oG/PvD9oXujLy0N6DRLCe/GTpPBeku0FA
	4qq3c43jWwLDecqhoaFkMmtE5E9BemdO/o6uQMfA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648197719;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=y7JPmE9/IAjUOvz3YEJj0KuvVxLVJBW66kWIZHLQOY4=;
	b=bziGeSA2sbHEdhIUe7y7SWEtD0GZD66BaYC+iClOWIx8xDH79gPQFG7xCh1f7VVd
	pOSXodaq5S/IrAgfS0e2ce5L5mpy2ugi14H4lIZJPoKoNmkfyGvjMlk0gxCUro1KaAB
	mbDknK9miBC3LDQyuSuERe6YyrZXhI9F2a/4O1zc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fc03d5113-f27a3c0f-d32a-4e32-9d3f-95fe60827a49-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5ebe5a3b56fe86a8a58a434bec3152d48777cb900ba584e2c36f82f9dc3eecdd
Date: Fri, 25 Mar 2022 08:41:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.25-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648197718
