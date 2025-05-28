Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D3617263A
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748431795; cv=none; b=n/7qXK1l2bMENsLLJw0R8oVe06Dh31y5LHnurUAmBi4Eja/3ipOStcjCxO8qlv4Gkh6TLHk4XKV7OrONDNPFpWtZlHtiajpK5jRjvGYRydULvGlRbpY8b3Zq+J4raHZPi/CvSuo+4iIHw17C/Q1Vbij6qX7kK8b1Zer+w8fidjw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748431795; c=relaxed/simple;
	bh=KfT9gctXdC199FqrXOq5s2Pe+ie2cpUNLQdkaGGZWvU=;
	h=To:Subject:From:Message-Id:Date; b=YNemdB1hko5Ci/Ghs/UWFX4j+kGOv5F2dc745uv3pl8sXyxIb/W6KNQljd+/MEGQ7g/Mcz0rFGVM8zZ0qTcR7MZXNThiVEEAhcwrfQiwDQR8Vx80sejSnGkEqFxby+PApkUAiBCDQ23cGKuZYw0ixaThDWUgivDKI9kS5Gx4UtQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uUX9/Pyq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uUX9/Pyq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A844FC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748431793;
	bh=KfT9gctXdC199FqrXOq5s2Pe+ie2cpUNLQdkaGGZWvU=;
	h=To:Subject:From:Date:From;
	b=uUX9/PyqiTTsqKp3k4Vz0WTYfI4caEe2HTTUzLgiJQ/LciCqEkCS+UW+hm/dESYZI
	 hA5IYaw+7GHG1tZzML3uPwpIHSeb7HebRsEWyAkk0OGJmbH4s8qWZ/R99/McFJuw8+
	 DwB0P46IAq/YOtB5bgNWhPSgqK6B4VRshA9i8MLfTs+fiEr4A4IjWHyfr7emH6twfs
	 MoNSjTTT+zfsgIAEJq/wmz81H2FsnNEvqXB7BiPGtmyLnx8jqaMInBLrBELhHJWDiA
	 KCMZ25UA92k1K7yFYLvJXee9mQbOqxBjPKAwvGDwqtmboFFM4yJ9ZcMnvBxTwgHSWb
	 l1TcktNJelpZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91532C3ABB2
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174843179358.12814.3000325542413826995.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 339594aa697dd2e775cca0adf041b991dbaebb3b5731eef076dbbbe477d8d66b
Date: Wed, 28 May 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748431793
