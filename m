Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 022DF4A16
	for <ddprobe@lists.linux.dev>; Sat, 25 Jun 2022 11:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656157012;
	h=To:Subject:From:Message-Id:Date;
	bh=oV7sLFsSqNtRC22zLslXtqrQWvTRUD3YEWoOlVblRnc=;
	b=izcPmHqRvMsxOFe/Fcrcv2uVWM3yujeDs8JGZk4gkkKwnEDsLPdSzYRjNBoVsRzu
	F3qGyAJO/EBmMTOax45/U4N9UXSKBjB4zteSG7Frc0wmRmpXE7mofHV5tZLyxrbH0sX
	3NW6Vx78w7HwKwOXY+lyaK3EdR/VTKlLLyeLdrEA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656157012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oV7sLFsSqNtRC22zLslXtqrQWvTRUD3YEWoOlVblRnc=;
	b=KoD+Jg3hvgkzD6Vd4Q80T6LluPI3zow8pwGETHWSCCKLFIqXtt5OPO8VKOkEomme
	gy4tQoOa3FGt09WNyJP186uFkOHWu3zmBsOzwO71jV9Ez9EHbrYmO6nMdcpswXP6j6R
	UnaXXzS88jz2ZQz3R/DD9ZulGC8dJxeEaZEHvQDw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101819aa68137-0703d373-cb83-4ee0-9b64-19a015ccff7f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0def4b62dd497bfc7d4b42b5406bdb7e9d6edcf762b73b34ed6961caed065040
Date: Sat, 25 Jun 2022 11:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.25-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656157012
