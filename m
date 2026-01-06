Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 144F4326947
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 11:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767699834; cv=none; b=IX30xrybLCzfECWrmLWthFJzKozF/e5YNLp0lxPDOa4mwwqVTekLizHvOZS2DXGqd3/735fYstt5JeZXnHKoHN9iytDQontG+yfkmo167CSHAN6RKdc8T/Wdg0fAattd9//YF/MBfCKwQHF/gq+BPaRm0pj9G0eKdam8b7hoi0s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767699834; c=relaxed/simple;
	bh=9Sm9RFt1rRxFn4kXHek5lRXkhucOqKJmi9xmp/JSOjo=;
	h=To:Subject:From:Message-Id:Date; b=H65Gy1xuu0LBXbPu/661Pzq1yzRLJv4Zj87/Hx9Pbn6Ov8zYVnKDWddtVk5f7xJlnwrgBS6qUIx+0cTMXUhhIBO14UjnfBsD5NIikKfjtb/rQR1EeqRDXVptgvSvjQwVrt6W/a6fHjoOje4HNW7y+bRC0zKJd40XA62t29L6ze8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ufv5ewEl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ufv5ewEl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FDD0C16AAE
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 11:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767699833;
	bh=9Sm9RFt1rRxFn4kXHek5lRXkhucOqKJmi9xmp/JSOjo=;
	h=To:Subject:From:Date:From;
	b=Ufv5ewElHNfhAYYDi/KY96dsEUerUfXxdJjr8TUSO30l40t8ep9k9TREBsn94ZSJL
	 Zw5y7zDLQ8e2Vl/QgF6Cn7gTJaoYf+Ch4dYDZCc5CFb+tHYy4pIaegjTQCMgZq/3D/
	 i6lQVcWkHLPdx2BWLl1bHo66IifSSP0db8Ng7KWGQDPnNir+hJAzff54RlqDdRPhcN
	 z8qPeiZSZFNEVzjOQ+Jj2ndSaAQBjj2NJyGgiNNJ2TSb/6Y4fe3e2Kcro5zd1p/uff
	 +A7uE8KO7ZCvhwXcrv9afQXiOr7O2/Nb0deuWkUVpe29N8H2hY3VL1REPTA8p5c2TO
	 u78Ea8Rt78THw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBDEC47BEA
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 11:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176769983358.17923.5169521766604245001.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 621f499f9532156f764af9e2148129d6830c6f4150f556abc40d2fd0e9876492
Date: Tue, 06 Jan 2026 11:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767699833
