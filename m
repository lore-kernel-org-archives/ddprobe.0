Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0E692AD00
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754416793; cv=none; b=hN817dibisgtHSp8yRpaD6UIZ5L15VCbF1Duj4UY9RY9ZjcYRKLYhMTrhWDZvYfXHbzwi0VOWGw+iqB50LnHJJG1a0qmoZiKrUcO5Dw0KyMb6QQ96pfT4ZOlu5U7gWkJBXrg7HtE2f/sYqDnlYNnewyHb9DOQNzHL0SQeK4IY6U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754416793; c=relaxed/simple;
	bh=1Y+jJvVCG+JD7uCspQQ+r2UzjSvzBT1ohdZED6RO/hc=;
	h=To:Subject:From:Message-Id:Date; b=QPLJvD4is9lgCeUmQxMmiLP7NEhzuvTvsFBm+0pyNRXYfmI/4h1dhCZKse0O8j2Seg3pXn5B81LH1s/QU+LXKxuolB2VCKP+C6KkBzvzYZ39xAO3405Z1l4YszKKsXpiloxGG8TOj8bYVmxgXMD41ReH+lpEJNu9bVZc9AzX78U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SWssIADt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SWssIADt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A023FC4CEF0
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754416793;
	bh=1Y+jJvVCG+JD7uCspQQ+r2UzjSvzBT1ohdZED6RO/hc=;
	h=To:Subject:From:Date:From;
	b=SWssIADtZyUb9XBx5eajdxb5zBIU4yAv4st1HM+IO2PYyNl3cUfkvV2h6ZVpTB0bp
	 pVMWXeJDtJYiDRGAA+6/4042PpyAlvEAfMsiC1zSjRxnF7r+M1vpnradmsg6CjneUw
	 74Gvvv2b9QCQgearuWOByMvoRcmI6caHZEjMzPbZEsPnmohfUH7s0aVp1hb9V2M+9m
	 sYQUhISGWGbu/pMjDco+UpPz8QF+Lfob4Z0rE+wy2u5AGQvCr8T2X30HZ6awbXrO0Z
	 SksOAItQnukzB5PvdMo6TmfEj9oXUom3mLTtZq3x14VY1wXcHFZKL8lQEQr3f2wxUM
	 +mp4V/TXQjLfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F425C87FCB
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175441679357.21947.17876190800329035456.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a2724cbe1eaa91338fa83341d03113248362fc28ae32ea20b7d8a3a65cf2917
Date: Tue, 05 Aug 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754416793
