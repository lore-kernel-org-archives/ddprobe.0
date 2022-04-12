Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03E157B
	for <ddprobe@lists.linux.dev>; Tue, 12 Apr 2022 08:38:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649752738;
	h=To:Subject:From:Message-Id:Date;
	bh=glwU8UXRRhyxTqn9jTXG3/hshmRujjNful4wkD1fRm0=;
	b=XnnWqk/DjqhdMI6/s0HJqkD6paeJB8AsctbYek2Muw36Xm9Q0VLp888+zSQJ7m0Y
	sB3AHoPPT356aKJePu+jvJoR6cBGhuIiqb1GODyrp0JlaFyTNHu65V9abeODqO2SVLE
	VIaZtj9L7p5cjDbErv+xoMayEwOr0ZcDMuoC6Tec=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649752738;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=glwU8UXRRhyxTqn9jTXG3/hshmRujjNful4wkD1fRm0=;
	b=SkSTtQW3fkZ+iFfE6PwAmcL4T+h2fxiepZsd1SNZ/GR9d4wklzK++p20hMbpccOS
	kf0f36rcdMBba6eBPS1ekfII7PmzXdRGRPiEqjFbIK4ddIRK2ZnzeGlKnaptuFolykS
	GD/nh+U25y3Q/tNeHaLaFxUj+pj5FpE8lwYyH8ZI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101801ced0a00-ea8fb0b0-a976-4a07-add5-cf94831835df-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b70f4e1ccb7d46e08d7d9f88b28e887b9f2d4c1bede824eda44321b8503a4121
Date: Tue, 12 Apr 2022 08:38:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.12-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649752738
