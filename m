Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39947BE5E
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742653194; cv=none; b=BMn3UI0YMXIC7r3vrPJtEmvEpJWa5QhVSXOlWw7Xwm5BobnuidA2y4PWDaVtIiAXIOctf82PAJ8BCCcPtqwUxJ5tOWcfySiiXqh/bIDSlcNmGQ1bu2P3w8c0N35b7Czv+e0TTPYcrZ2+FS3e1hGthGxWRXnmdt7bedDYQIK0hwU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742653194; c=relaxed/simple;
	bh=almP2Dt3yZoQFA9OGiJOf+N6p1pG5eJ1HWG8dlc+nlM=;
	h=To:Subject:From:Message-Id:Date; b=kxxTnQj3i6BkDf2KOQj0Ma5ZHB6DBX+D2miWyHdLwEzKb2gYbka1mEkURH2q5dklBcKw1xntmBBjoTgdhZzwZX7Cw2SEtYiUVQ5Vj3fepqLKy2WpVFjDa/y60lVyw6pIw7D9RiaGYMQo173QpkbXarunr+XDoGe1lr/3xzfWJrw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I/CdOylk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I/CdOylk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6991C4CEDD
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742653193;
	bh=almP2Dt3yZoQFA9OGiJOf+N6p1pG5eJ1HWG8dlc+nlM=;
	h=To:Subject:From:Date:From;
	b=I/CdOylkLcD3ZFz8ykSJjCO6lUkX4HtxMJSdPZ2S5E82NvmWY8zvOIJJ1yDLQ6cHG
	 Gl9sE6ttj3BfGb8gEbUsl39a5956sNBq9V/ZPFG6GsHNlMkkY2K3A1Z8JMUyYB0lqC
	 0RSbHq5mcY7rBLWMR5fq5LrXrf0Ca6LcyGjBhLxO9oYglAJj1mn/yWnTeXPCbm6R97
	 lh7WqGTu4EKZkpuGQewPmIPrwVR9Dm9GXEyXXLpTI5RymChUK/RPiSFV6aT4QWeCUk
	 mJxhwEWma2GUyLZc1Mtmmwl6KoiNY4Xs9QUBpd0mJXIbWV4kaXfgaPT3vYy1Wvf1oc
	 ali2dUY69t4Kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C341C35FFC
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174265319361.23636.6170614953776433213.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4427ba64a356e940749c8427d81010bd804b5331b2c87e9026e4163db24af49
Date: Sat, 22 Mar 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742653193
