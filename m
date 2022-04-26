Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F10433C3
	for <ddprobe@lists.linux.dev>; Tue, 26 Apr 2022 22:24:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651011898;
	h=To:Subject:From:Message-Id:Date;
	bh=cgaNFXyxoiMYyq5O2aEPXCQ/PvlMhpBL9hxRw7Buiwk=;
	b=LLh1Dckj+kMXdh8wFMgtm4bo5Z2O2D60war45nByNMqZPswQZoBN8dTgIufbCS/u
	caN/dvz+B8ymMAqcIlWuoSYo54Qq512dQuEVU2i3udKxJpqto8/2lx5Fy1WgvcbWTXI
	t3RP9nEukCW3SIFON5niKwSKgXTyyEE6OglBy+z0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651011898;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cgaNFXyxoiMYyq5O2aEPXCQ/PvlMhpBL9hxRw7Buiwk=;
	b=OIPfESOmivMIbQjYmq/D4jIjMn/9af7s6OjbeY9A9RSL1V0PzQEL7jFKNVB0q9Wb
	oA8EDfv4+noQeYIuU1e+G9c7hLHX26l11AiPgIK5aNfRObjRBQhyxi/37oL+csY0916
	GKOPnp3BtVLKACz0uPfxMLsLjQATnVjQI7rjCKQw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018067fa4bca-1b546510-7226-4c5a-a132-1e1dfa745f87-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 72ab9d2618502acdf0de7f423405359bd3e20bd934618290901972eed2dba163
Date: Tue, 26 Apr 2022 22:24:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.26-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651011898
