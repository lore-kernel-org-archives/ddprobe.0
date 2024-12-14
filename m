Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D77F28FF
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 00:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734135954; cv=none; b=PRe/5n660I6vQVp7OtJCQcpuHM3WPzYsZgXkmoE856Uwv0Ggp5UYZM1naC1kmaAJVLoBLM/251WOvXc8JpQMuYGUBjlSGrZdDxn6bfGcz51M57xWp4tv2DaVu47HuJ376s/7dK5lmiZOEHXA/0I2IHVVjADJjAmIzyorLlh/1Pk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734135954; c=relaxed/simple;
	bh=XQHJVs+DAANpIq8vuEV0WikLYiNdTysL+XXiUecjOCQ=;
	h=To:Subject:From:Message-Id:Date; b=RS1no3Ft/9Ijkj6rSLvJxJW8FkSeWzr94CVHHEK7lr5exMxBnkPXWbYLRF80B0Fq21oVhaVKHWxBuJEjHzJJV66kW/wXwJpLc9o7jxVsS5dqV0dVD1TaLABkY0woBxbRcGwFdH0qwEo/vvQdZQ4eXkqojhaUvO61j0YZMLvDEPU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a6FC1uDo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a6FC1uDo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2C4EC4CED0
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 00:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734135953;
	bh=XQHJVs+DAANpIq8vuEV0WikLYiNdTysL+XXiUecjOCQ=;
	h=To:Subject:From:Date:From;
	b=a6FC1uDomFYIhr2+DH/Y1JduQM/LYsXGouLxYLO9rNGIwKHH5RN1II5JTCiGz1L3G
	 5Osf2s2T3D7MEe9ZFV7PYNue+yPAefNpMeLaUGfTpcxmOsYeU0IXIiE8xCIPSwVVc3
	 LxFuBeKOU6aGGkFwe7aGcyTaMkiqY8ZpzPgeeMvXhc4GBoAOwwA+LCiJMRovH1VWeg
	 aVQ3gzRn26ksSIgNXvL9ToOVTt7WJf6zIEKMB5EG8PD49BAfhzKWSCp33y7d90BXaF
	 t1iptipwWfcg4tqc49GxbNOPyUxCGVPuANSOQSTUrA6/dQR1vunxWXyOjEmEeP81gM
	 vwdiY6EtFSsDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D4FE7717F
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 00:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173413595358.5530.12341851479040649294.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df1dee31419b7172962aad31b6d1a80bca59294a9472e22adb062fb6cae21812
Date: Sat, 14 Dec 2024 00:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734135953
