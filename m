Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ED315684
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745816395; cv=none; b=fFxqTfLc3Ofb6CEtN2Bv2yHcirNCFhwvAJFaZFc3BkQ4gDcL8Vy4BdxnESiBLsNhVAA6vktcADiC/wLhC3dvv1chX4xxzNAMZt+Yoa21JYl0EUHYIwyWjLQ9WAoJ25lVbi/NBaZz2UdGikBneEtY9+ujC6bv2eGLQV2Frg63xPM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745816395; c=relaxed/simple;
	bh=KgHfXEWHaqp/+1EpirfDGQK14TeucLUyC9OhKshmsNc=;
	h=To:Subject:From:Message-Id:Date; b=dZ22ZksaIcK7tip03aD+1sIl+6vkBjDHCKlZqq24daNRJJXejxuJpqtk/7YsH7smNbqtUnOwJHQegqxGa6UzxKHIM8hIFz4nxoXYm7JSGV+drh5he7QzbBwXvEpk+qhW8p7VgUXAfxbCX57NGJ1jkgLvYHdxqky/rSeN9C4ABYI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lGvPRv7r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lGvPRv7r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0AEAC4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745816393;
	bh=KgHfXEWHaqp/+1EpirfDGQK14TeucLUyC9OhKshmsNc=;
	h=To:Subject:From:Date:From;
	b=lGvPRv7r+UR3R3A+l/PV/rbQXLZ5xDprWcAjwtId161d9dgvb+kr5qy/hEkKIbIeb
	 8/p86rm32VtO/X35aWQTpoSrag5bvWeGeXiNI+ZTMebIEHkoFfyvHYt//N91xNHvDi
	 KBFH5Qg6rGyc+LSO6XW0ka2fY4Rkuu48kQ7GxSWWuMQkORS4R+ettIKG/K6eV68qBX
	 y+VLxhA/p72y6+V6CO7AnEbkOg8WleA6tEJAwpyXqSdK/sHENr7CVvUQyL0JnisKMp
	 JyMBGqpSbafLJ2gRs7Ox86Uj7FiKcj54kS279yZPFp6ivudhvhniqWA7Gfz+ILLIrB
	 0FMZD/1ovdaHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EEA9C36005
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174581639357.32753.13340746458554997388.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9978a64402cf8458fbd09013a4363bb0da58f02cf063215ed7445f1198417162
Date: Mon, 28 Apr 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745816393
