Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C92D1C3D
	for <ddprobe@lists.linux.dev>; Sun, 10 Jul 2022 21:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657488412;
	h=To:Subject:From:Message-Id:Date;
	bh=C/UYZZW+vJ1c4rKcPvleX7WYHiZ5hRYcKVf7+HSa6qQ=;
	b=bQ5ba5rTZfgyee4mkqzCwOe2X5FovgNDzRP7X92xWER0r5GlSvNudgt0du1tQJA7
	12iaYEXXegOszrKOBLGCvJQqgOs4KNhmX63aRevLwBAKFXi33Eh9vOxWNUHYkfrCl4r
	T63ZIqOnkMKuHWqFUP++ZNMEwBUIX/MD8nDJXP3Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657488412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=C/UYZZW+vJ1c4rKcPvleX7WYHiZ5hRYcKVf7+HSa6qQ=;
	b=fdJT8wOsg7+gcBL9x6djWjke0VjM2FQtj2ZVGcwUPuPf1QWvK8RQPwXW//pfhZIt
	HFoLGBjzPNttUfi4pyDH4ET9+TJO13ZU7b+v4/Uy8F7PmXxBOaqyTrd4ospPhJHJ2n6
	zHgNTWOEi+gYMj311zGIX6eIHCmbRSNIZxsjJHCQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ea020ecb-d41e89e1-73ca-413f-a2ce-09e60ebbaa0e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7acbf9c0a389e833735a42e601978bc4c21bfca33d9a77c78134496041883be8
Date: Sun, 10 Jul 2022 21:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.10-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657488412
