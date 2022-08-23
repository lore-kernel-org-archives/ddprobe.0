Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63D9A7FC
	for <ddprobe@lists.linux.dev>; Tue, 23 Aug 2022 04:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661229652;
	h=To:Subject:From:Message-Id:Date;
	bh=hOe2valHQMMviO9aQo2nlSYzkC5eMRxi2C45JAnFJuI=;
	b=IhkPBwOG9kdF9f0B7//FqZTAR+fb1943c7VGI7rPrHLUPBvyqDqLoyLN/GGSWz/F
	HevQKCqGwFeyn0qsm1mzX03eFkOnX9J6I9Wv+Y6GVDxPMdq5t1zumbsx0sDMER2XKdT
	7+oT198/Z7xpLHCZjy+Xt5LD6ddy5LL4SVg14h8A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661229652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hOe2valHQMMviO9aQo2nlSYzkC5eMRxi2C45JAnFJuI=;
	b=FlKbndW21SuW8biO/MvJn/Tmir6NuwEr8RNJMEUhS/b7RS4duvRrhclOfNcaKPbT
	2NyVqX4nI8ff3zm9JcvlCt4+9LPSdhm6wztcrAN/gzmBW9ST00LiDqEihOP0XruUM4+
	KRPO+fHY5Lir64L+KN8a2sXcIq8ZW+e7UlDX+qg8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c900da4d-269c95ac-7c0f-4c20-bd32-6f05373ea5c5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 704bbc26084bf3d51b20506b6480836ea46175afe5f6ce37040442d1a0bdd585
Date: Tue, 23 Aug 2022 04:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.23-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661229652
