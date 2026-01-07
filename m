Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBBE43A0B3A
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 19:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767815633; cv=none; b=IiyUmMgjN+mf7scB6Dv6KGHzoye8GH0WnYGuGYRNWzP2uXM3G5neD5vtt3ltd59Lu2IJu/2taZeELhFm49Xp1EEh9Gtjg7mLvB7vvYFzZ0sbWuhwIqt4w/qO2ZsUQ+oiALXjTlz0IKGiZT6dbwgh89nrrDZao4Ht4HvKBhN0iXs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767815633; c=relaxed/simple;
	bh=H+D9XCB8ru2G5Vjkhbv4PkNSG7JpuEIHgP9FcTPMu9Y=;
	h=To:Subject:From:Message-Id:Date; b=meQhcx8/z93IOxv2qJCzGzkHJZUjccUQe6U1s2O7z/WKlRyMzBWXOuvnKEulK2vgZ/rRq4LOZ1J/AOCirNLAQpqD+uSiL3YjqLKZkyL05aD5+l5SEPK7C4qQn8kWuorkg92HRIX4r9c6O5GqgjL+kyDtlVa5RySja0vi+OIT9mA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rUcVsqVx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rUcVsqVx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1E2FC4CEF1
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 19:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767815633;
	bh=H+D9XCB8ru2G5Vjkhbv4PkNSG7JpuEIHgP9FcTPMu9Y=;
	h=To:Subject:From:Date:From;
	b=rUcVsqVxWDVLDrf1WQ+F0IdOpJGuhZgzFEQlX3Ioy5Z/InUKp+PbJnUcdxsFplUvB
	 gtXP/1v8JOXP0G4mSV4spoDqmo+xkWwBRELy911gDPixh0cRSfdPfLI//hqFqboNgU
	 n0WYWrefEvOO+Z/Y092VNjUXlJQD+qGnHaLQ16rG1put7nBm/qiKFcxRNpMwpTf9pL
	 9HQuOWqG2WZKkDamo3hPatOSCnU75BuQ///WNUhQbJ2slDKTinP5P1+6l5hbNbo0us
	 FlYhhiqg54+CqlAoiniBfnkDAYBYQ5Epa2idKlus0ZAeZo5Z/v1RGqpn32y7D4OhUH
	 tta4gQZwQCavA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91ACFD0D16D
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 19:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176781563357.25332.4179660215632912103.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eecc87d579c8616de069597c09141424e7bfe4735dee1a5a5bb059ad234d4e19
Date: Wed, 07 Jan 2026 19:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767815633
