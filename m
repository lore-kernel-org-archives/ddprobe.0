Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 074FF7F6
	for <ddprobe@lists.linux.dev>; Mon, 20 Jun 2022 11:31:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655724719;
	h=To:Subject:From:Message-Id:Date;
	bh=u3ziOCJLyFxrY9NB79FNnAwcy1+x3PxfhivMC9OPtDI=;
	b=Bm5RPdbOtJ2LtG0bacBVdYNBHEFFchP3z+fZfRBFR/ToZAWUsMNmwB6umCJuPOT3
	OvgmMkw3s+u+4mY4EV200mQvHXw6huhYxbviFSoeubDiLdBgzz3k2lqyoutHADsRRS5
	VP5CluHl/8RsTd2HaXe3AFzgd+BFsREgCk25QiZI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655724719;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=u3ziOCJLyFxrY9NB79FNnAwcy1+x3PxfhivMC9OPtDI=;
	b=FU66h7fRrcLHJVGXQ0rwd+Hb3HckY/OrOj5Pe51dmUQnh/n1eV2BLcTi9Yon4g7f
	v2on7aoT5Ls8e2oeh0Bp0rxnkgQyuUHwGZaX/tQzi44byVsdh71UXvCGn1eKrVopt4n
	Vto0BweP8hv3morFQQ980N6HtwNc2HxhOR30IraY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018180e23c97-4e27d6d5-29ba-4383-8b55-df2bc49e87ef-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e7c6f4145da3f81083d80bc9143e5413c2d2a704bf287bbafb68a582f0177b19
Date: Mon, 20 Jun 2022 11:31:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.20-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655724719
