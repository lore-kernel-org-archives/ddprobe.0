Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CB7E5C89
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 21:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719609863; cv=none; b=OPAvB5xIJ5DFc/fJZ5A4KWgC6gZ4ngg8onrW6DyaJa3OponVO4kbRch0SE+LxynlVhQoXhtMk05WM9/jcypuk7hUrtwlLvNpPLjptFf7CqNoTAp557XrA8XctZLUTyRhYbdNVi1iVIZ/0bNC1huFSpQno0Pgym6j8iHl2nK7898=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719609863; c=relaxed/simple;
	bh=nZdG27mlXIZ1VwWcQGZonALhfVDihWeZWA2GsxT/l4c=;
	h=To:Subject:From:Message-Id:Date; b=aULOOPBZ7BmMgeA+VpplmZ9LF+KfnjSzJhqiWe5rr0caeXeqZxfb98a03R/iLH+SM6OBumoUxvSk8DDkjUyEiMKqDBQOYusGw0Iznj0HjBETL6n8yOhd6HJb7NrB+ZxKujjs2fDAE0OSZh9YL7dBcSSKwGl9d7g1wc+0aFXEqOM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HLCq8IVb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HLCq8IVb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8C47C116B1
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 21:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719609862;
	bh=nZdG27mlXIZ1VwWcQGZonALhfVDihWeZWA2GsxT/l4c=;
	h=To:Subject:From:Date:From;
	b=HLCq8IVbe9BA+uTPlwRnAgKfj5oJ1ArVD4xvRRf5ZbWFbwiH43oAuyGt/rDkO2NEC
	 WUP2HVu7FS9sqzZj6PDZ3lq2lbKwVcrn3MQkcEGi6cqUc0SDvLfUFaqN3ARuvmwroi
	 B2OxJ0C41Bbqi3qrv+9MWsLoK/BRapBcQHQbX3i6XAbXslI9dAKNUE4WrlWKLSu80K
	 am7+ThS3eMvBX7ZS++wwCRGGxOFB1GJEYLDRy2Ts5lVppR46Gq9micjKM8ljz2NaNz
	 UQ34obVbqa1F7mJyS//qqsVUky8KDV1jcDIEoWAjZZRuhtmwm4iM/VrBbEBURmVpwa
	 9TwcoPLs1F2+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D4C56C30658
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 21:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171960986285.6464.12179846695564093607.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06d99552c7a18825f119cc4cf2febae949f2631e4993eb430d63e1b808894fda
Date: Fri, 28 Jun 2024 21:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719609862
