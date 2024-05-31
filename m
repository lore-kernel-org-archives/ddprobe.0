Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69503134BC
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 23:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717199063; cv=none; b=r0Pu5HO3NABLN5uIRa7+tYGgSaUYns9rxfuX0XIrDaVjwsB950okkJxo5zXHe9QkGoA+cgn2p4RI7KFUwXmSz9+vMttMfoYStM794ac6KIYuwsScbXyfEQpiB00udkqW/xms5/u+WJtbjiQER7teOsft5YGlhmjHu5VTZ/+hPBI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717199063; c=relaxed/simple;
	bh=RbIXlCASKLOZeq1l4KYN9XkPMag5U9A3MSwvxwg9SqY=;
	h=To:Subject:From:Message-Id:Date; b=Nn+AUEwOBUbrnrOFSid0KghYzKGGZ72mvlZotAjJ/UTtjDHuTrvj5sS+B8PGJsCmWtCSHgiQUWCr6trxDxK6sgsR1hKp9U7VA1OLcxtsLv9MY5xmRYUgfh4Epd6ot6OI9RM4YVAtTt2piAQiaIO6IXccmbakDcQTJvkXYd3Ga4Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XSgcC68K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XSgcC68K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D16EFC116B1
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 23:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717199062;
	bh=RbIXlCASKLOZeq1l4KYN9XkPMag5U9A3MSwvxwg9SqY=;
	h=To:Subject:From:Date:From;
	b=XSgcC68KvncyTqYmND1xv9n8rXkD85A539KU7JHpscWmVrXy06mNWJzcKhUhBkOVg
	 uu94s+8WYAg9ctWm7Vh38MRD6YuMib5Kv5l3etOmm1bdmshGA8eZjmcSlp14b1hP3C
	 gJvIi/JZpc7LW5YQN72vXUqvz1oRxdHM80YRF/vRa4WsDRt2dc2DPdLHtFyXos3MCx
	 6I+2MJofatOHzCcbb2AEMxh1sj6QkUO6COhBuaKYrZ2eh3OwFY7sFIcW96kqw2Z8Uv
	 I16lOL63qdClJq6i8C6hShrq/RaFa6UvcbKkFNZ0p2eqHbOTQ651dx3K2Jqt4rtc0P
	 Sx2WFB9jDvIrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9B08C25B75
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 23:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171719906275.24709.16227030274053616247.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f081364e0a89bcc40913dbe9bf236e8369bdd19088dd788c92ccd65aeb183739
Date: Fri, 31 May 2024 23:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717199062
