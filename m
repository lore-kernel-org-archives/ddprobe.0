Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3673533C1
	for <ddprobe@lists.linux.dev>; Thu, 19 May 2022 20:18:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652991479;
	h=To:Subject:From:Message-Id:Date;
	bh=wP1RQQ+epFkN19L6QHcnv/U0r3sovItt55XePlb7Gjk=;
	b=ZvH+FlMZZLuBi7zraIZaRrAxmO1cl826pGLPR0JMxBFFgMU17f2sUD3uZhlzIepX
	Dlj69YcYLw8CAfxN7QsydcAtA8/HQVlwG0GBFV3THB3a/E71vR2eyX2hzeyFcizVnyB
	8GpFbjVzFfoj5LUe1JfzG2um6JQreu6FKRV3lTL4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652991479;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wP1RQQ+epFkN19L6QHcnv/U0r3sovItt55XePlb7Gjk=;
	b=GksP9+8MEXZkpB/RJ2HfcNzMMl+qTCusiG6ofSIjKEgl/B0yHuMycYGf7sLGyljA
	p6bitJVustG/FFIM8cken4c76NBvJOU6AKBGbkiYlDB+ZQzwCeG2JsehKsz0Vdp9Bld
	avf0SgF4wqEHflqoVkELfcJggbvfgSZISQgV973s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180ddf84e2a-cff4a9ab-fcee-4eec-a988-c7f77c483ebb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 07bf91cb15abab5787af701fc9d1b907940a6ad4f5b1c62ad1804a50a078d53a
Date: Thu, 19 May 2022 20:17:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.19-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652991479
