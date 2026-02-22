Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC5B61FB1
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 16:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771777493; cv=none; b=O8qO0A49LAZ0cH91KgFZIUvRliZgi310Hv34ukbQcPelaCp3iqriv3Jg0ZWa5lpY0IS74ikoxwG15Ga6R3Djipyx8IZLBDJwb3/0imMjPceqlXDxV5tDrq2YrWns42n6BtdercjUxF6tn0AW8xgcmSbsZE8MucTh1Ud3Q9yQSnI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771777493; c=relaxed/simple;
	bh=I2QJ1Q3a6gllKs0KSi8gxZL+tl+wK8xblvW1pJfXZtg=;
	h=To:Subject:From:Message-Id:Date; b=X9h1A/HwglqdPW1ZzsV+vGXvfizeiL8PHaqlYu0vbaDg7ExS5l5WkMbB+8dqi9q24X4Kzpvle+IWgjZ4gzIGQdaK4l+xpAm5r/AykZW6g91IRdCO4CEfaajRGXyVIAfS1ihrSCYhB115xtQnCXK4mVS1t9QfYaeSIbg2B3PhHps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KkVh/dO7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KkVh/dO7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7601C116D0
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 16:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771777493;
	bh=I2QJ1Q3a6gllKs0KSi8gxZL+tl+wK8xblvW1pJfXZtg=;
	h=To:Subject:From:Date:From;
	b=KkVh/dO71EZw1Nt9J0WHsx+fS6F2qhkULTYPxjeSdNIRlXnvfMbG+JGdDoDtJOcHf
	 +RMhGHvYn5NiF4i0FICHFywXnG5VLPBb/VdPv2X/BAgBtXLnCv9OQqYrzM4K6+KdG+
	 5mnqoaE55o2jR7/nhog7YhpdrTzQ/WRb6+0BWjc+5j/hk5ShLIusL5G5AwD0j2pVXZ
	 1asoiMYB1yzgQ1LU6KU9+dKolTNJmUFeCsH7n55KSxsk3vO+P66DjCiVClwy7Nhf+A
	 lQd3wOLCsyn4Z0IT24GzKpfZoTrhUWyFFGdgMgQqOoYcsuRO+7c4moaO8w07qLyI9m
	 LgboMUVXMtFww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92CAAC636A0
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 16:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177177749358.19530.3478034683612099156.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: adcf7db5af7fb69ca818738d2daa652300168cd6c399b3287869364ced665553
Date: Sun, 22 Feb 2026 16:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771777493
