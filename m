Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DA7BDDC3
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744331994; cv=none; b=aCTwUadH2Eq9d1ergkDggOawSI1T0UNJBu3RbZS9ipGaJ53Vjx8L0KUF0CV6JesOk6NM14RX3sbhv/f1F/2DOX0lPyB7YSQMSr00odZsBsOqfnjlDt4zrqEyyEn6JumQmJbX9Kw3RAkHBlZigWpm4w9oIwWH7Rpx1YkqjnNJ8QI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744331994; c=relaxed/simple;
	bh=TS4R68boO20J0E78R5RsNNuMJ4/PqU9bPU49s0NHBZM=;
	h=To:Subject:From:Message-Id:Date; b=BAmzUAAZUwtZcWME47mqF2Bo2qXh7ltqY3Let+bCa08tlV90g0ESIYrhkqJ6MYevr41PZPaVer4449gDYV71h+eLJK5BzmgBDlJo9FXPgIvCiR2oKAZysFCCT3eE0MfGDoD7Eqx3u/i5Yu0oIdXjVgnMBSrr27n+et6KeuCUe88=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D8m5E5Ev; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D8m5E5Ev"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B12F8C4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744331993;
	bh=TS4R68boO20J0E78R5RsNNuMJ4/PqU9bPU49s0NHBZM=;
	h=To:Subject:From:Date:From;
	b=D8m5E5EvAFzm1j5KqnCO2YC+xu7hK+1lXJQZeYdocNbswX/AovlqbILmEMmcymiAS
	 KeNtal8L9RQ5PvZE5/zw7D+rgX7+un/EEKMELxmrYZs5zaJ3YdgcLyo9ED0otdR1we
	 n8Tzm+/3UvkNSwwrOdx4ZwwF4dQerU5R83hkXKU49vb3GiLlKSwRgni/IXxIZwpnTQ
	 S/kDRkh+krp49LgI59cVmmyZnX2z7b34b3VVSjWBSV/Lzl3vSn6v1WBhA4IOSsGQlY
	 Kn743ypzHGv/Pzsy5loTXcKJTLUzGjhug0Wovh3Luc5bSrCU7Ud41ou9m2F7XuWqEW
	 7YnzQzYuQJeRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E15DC369A6
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174433199359.11683.10868219180072097052.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c003c3d62f44215598da2ec4bdc6428f3df8a55bb3612d75018cb33b1a9d418d
Date: Fri, 11 Apr 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744331993
