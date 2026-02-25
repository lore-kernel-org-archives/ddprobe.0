Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F098C14BF97
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 23:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772061894; cv=none; b=U2XC/TwtfFhi70t38oeb+PXXMb6O8bQCb7lLnF+a4IPKHjDx1SJrPpuZbKKVucR/IOO1UpICAAWa8LBWpq3xumkNp+Bp+yITCHjNP+Pq6KB2wPrQgubasTU2mDF/m4hsdrof4OG4Un/bdw1xPJeTLz0EtKIQupyVJG6tQLoRzac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772061894; c=relaxed/simple;
	bh=JbiWoKBisDIYNCX5DP4T/gidRFpRVctYgK1ZxKjfY6A=;
	h=To:Subject:From:Message-Id:Date; b=ESCZvVotZ1gHlNCw7vVgBcysuntmy+mslXQFtC20Z+DQ/Hb5YdXt8fDot1QL97P5KmwzlqFqLl+jbfYvCwl6HU3XKN4CpWttJsNolOm2YVQx5zoEDu8d5rX1RLoH3frUDC9I3FmCb+9hxupiR/8uotunyhRyuqiZJJ+wXixNYf0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=moyIxPhI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="moyIxPhI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3D3EC116D0
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 23:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772061893;
	bh=JbiWoKBisDIYNCX5DP4T/gidRFpRVctYgK1ZxKjfY6A=;
	h=To:Subject:From:Date:From;
	b=moyIxPhIY7dSaFmfDH8DwaTjNYly9+3IrraL5k0QK8Vdos7oF/BTTDvf6TtnKyhfS
	 mj3ldnSawBl8rV+jsG48TBrYM5YjNa2jER7Yz52DofMsJAARs4OOXq5VY3Ew/aoHni
	 DJzmP5YPNzF64xgIIdUDy0MyhbJIrYRdBZjIWByR8f9COyy8yt5H+aAzSCGqKB7Kcd
	 Sn3NW/4M9jsECdXAXrODkRp+sLg+/OCUgIfw3aYVQ2yvVKxxSj3kCb+oG3LXWOoAw9
	 BIQKBZQMV3NR/6eGF5pLX+qL090fVzDaHKItTtmKGNiz/DVgf+b4amzi+ozNUtU91a
	 SJhTftHcq77Wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 950E1FD45FA
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 23:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177206189359.23272.3902348462474603637.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75c19872038a15f330b57666e72c8e4644566dc150e5dbfe8b0f075bd2fc6e1a
Date: Wed, 25 Feb 2026 23:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772061893
