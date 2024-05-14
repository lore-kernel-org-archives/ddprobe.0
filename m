Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50D86181D1F
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 23:02:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715727743; cv=none; b=RoXyFlq8xPIChh0XqrQG5KztewbfEOKqNSzlGQ/mckbA7UjSN4q6ZVGqB4xOdRBl9gPw/m7P4f/mn1tuOgTTVEnR7U5wZTR1zUBEhzBxrMeSYj+++QBX+6wFHyUEgFXSicLBoiZoTeIVLREhExmQiFMpM4tLFddhch4ZAQ3io+w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715727743; c=relaxed/simple;
	bh=qvYTa18PH/kGgsE8HXZCkH+PgqpMfZWg+YQ7Y+Qlrkw=;
	h=To:Subject:From:Message-Id:Date; b=SiC1DahWpztpxM4qwv3tG9D07x1ScwCQIYeXMcQJs8YZzPnCbQxJPh/2LwmJnNmyztQMczMja2H82SgRZWQ3u3V/EnO0JV7e7+u343fy32DhYvGEPR4oYx0TdW8qFsr0ZaLkX8/tdXUlUJV/fgXyC51dBalE0jUR2wxTIoJbV2c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GTIE1hWc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GTIE1hWc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFCD6C2BD10
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 23:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715727742;
	bh=qvYTa18PH/kGgsE8HXZCkH+PgqpMfZWg+YQ7Y+Qlrkw=;
	h=To:Subject:From:Date:From;
	b=GTIE1hWcIdSK2gChFx/7VUCDBme1TUdzIK+asmNj/s0aU2Hbtxd1tNsKB60V9EANo
	 2tcnmKyYjp96UseuipTctwFsVRXjQEhdTWRPNMNtrY3N7rfiCUDLKTXydV68y+MrWP
	 xKyCWzkEj0nLAqSSHBrugUE/19x5D/i095OESAuBbujQhBO+KxGB3GPUDQZJNLff/6
	 Ec06nROeVXCmZ+eZlhLca8jgT/OqkqDN1MxFAw8SnII+FhGiwnINm4ZfwqROi8ftNM
	 tmHXzbJx2KEhFwzSwgf9f7eb5/qlu+4FkOF7wQcYEGgSgsI8epdMg+AzpK0RwzWpLj
	 4Or3Xc5h3Swxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1845C25B78
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 23:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171572774278.13775.16506482672806660672.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d1a53b24b7ce76891183a3878d586358ccfe34396074794222880d4d37c30d6
Date: Tue, 14 May 2024 23:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715727742
