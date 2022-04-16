Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0075A7A
	for <ddprobe@lists.linux.dev>; Sat, 16 Apr 2022 10:42:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650105778;
	h=To:Subject:From:Message-Id:Date;
	bh=pVPm79Bp3xuJUExg2d2CwfVvqAUSuSw6yrdf8wJgyWk=;
	b=J3aXbvc6LVmAlY7v53oRcn+8IzbYoShQTNrfqes8WNE3B9QoHzf1bYopLfHSuPyA
	6KA4Z4sKrN77ulJeDI9QfJjsJGnCDEoHXgi8KzyR/AlkcvCK54AuHeZ+VPSYlpe2Br9
	WQxrCzlYHwvlgkA7lpJZtiE5/Qb14XwRHUmBO09o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650105778;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pVPm79Bp3xuJUExg2d2CwfVvqAUSuSw6yrdf8wJgyWk=;
	b=Yw9UXafWRYEB/9zEROhZoog7VIuEdVjer/FYqsnzOTB1Lh5yubLwIPlb7Q84ni9W
	DkMVPGfVavPJIdMP7kMTWWiymslZTvJuWgJknCRr5YXTeCn7/LBdbUqMzVauYm4w4I0
	8VrBr6B3F4mI8kR8EP7/bvdvo4jmWSGRN55esG8E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018031f8005b-97b42ab7-c41c-4612-be6d-d4387e26f407-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 702deafc02239411c2b9957b701ac6d3e7a64ce33cc332f43b03678aa88f3ffd
Date: Sat, 16 Apr 2022 10:42:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.16-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650105778
