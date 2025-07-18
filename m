Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1298110957
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752880794; cv=none; b=WnDwfdvqk3d2EilQbk0ok9XCj4ERilU/vqPaqLToa25Yg6dBsn13ArlBci+3Ll6BZCJ+QD5B22hYoOYyUHcZAj0zAcz1ws5SBRUqB2QQuUjcNmLp/6jp2ryYBrD4M3J7qKuO3k46MtvCJJMrHIze6eeahZkR5FhvGBnQfrJgqJE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752880794; c=relaxed/simple;
	bh=TGConEl7BrVUyRRoNuEKOQRXPieyYjDEi2qk0O7qfXE=;
	h=To:Subject:From:Message-Id:Date; b=aFtaJi9SrCEdn9JPPU12ysqUSj1Tq8ej1Y31Un/9b6QaBOnxYKEHQbN4fkSa1xwBIcknSRekOq3jzrAdWH8BO3gG+yZxQG0W2czslDVt9G/9aJqdEhB95NcfSFFnCavsnayQ5ZbSp8+EkFDTU7+Ccml2l7JLqNLg6CF0wij4/WU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iwLhoakG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iwLhoakG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E711C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752880793;
	bh=TGConEl7BrVUyRRoNuEKOQRXPieyYjDEi2qk0O7qfXE=;
	h=To:Subject:From:Date:From;
	b=iwLhoakGe6MqSGrfNWYDJvJuOdK/iGF17S7tg8nW0vfLoUJZHrjT6oA+p9rOaypYN
	 WKqpQ1RQPtQtwv5yT5QKQ5iVO5ywTXmkauhlYZO19+rFu28tpdfns5Pxto4XiIjEiF
	 u/djH7ScrYnJ9ENvI8GJFjTJAM+VfOeexKtodRUUuY7GGdKUfDRRNO2RxVDWS8vDNY
	 LHA1foF+fWgLze/XwQK/zLxEhhriL/VCcUAt0pVSU5MqjHNXj/C5e56Tz3Krn4eQh/
	 VPqING8WqsvDjtXud+WqEdzMCZn6N7oI9Adxk7pdWuIVqTdMA+rSBB7pePf4mMiOzS
	 WMpuJV2JVLxxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F325C83F34
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175288079357.20819.17480169102856353364.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e172097cc50fdd26306b0817b180fcaea6769697ca17a07f3404b096c6f3736
Date: Fri, 18 Jul 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752880793
