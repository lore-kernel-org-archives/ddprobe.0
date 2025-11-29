Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E11B30DEB1
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 11:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764416574; cv=none; b=M8Kp6ql1nimPHtZJDI+r6EmTaMrI+ps0J9sFRTvRrMZsrQbhqVDh6PnCSCxW+CRqNNTh+qzVyDFUZrh+8S/VBKauiy5+p60EaLyV0z5ygN2B6wQlhAr/vi/ZVtjcLXANdzF+dARtofernJXTNlWRvVRAip4kSCMgBvb6hUAl5YQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764416574; c=relaxed/simple;
	bh=SMPrmKmaPGleglPmBKI3M7e5U5vWtSeQ+x8rg+OWQD0=;
	h=To:Subject:From:Message-Id:Date; b=h3zlG+R4FvAiPvIaIZE+kUZ0yHGwTgZ+X+iYRR2X0c+UIoEzecphTaC2BFb6Rknu7mwh/nVKwxhWfy/bBG77c/tOhp7PRmCF1Z1fpL1pWDv8Yg0t/GuB28JrjywgBASVnyjW6XDnmiHbmXovenHlxv2yg3vzV1mt6q+78AQmxgY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KNljR9YC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KNljR9YC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1FA9C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 11:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764416573;
	bh=SMPrmKmaPGleglPmBKI3M7e5U5vWtSeQ+x8rg+OWQD0=;
	h=To:Subject:From:Date:From;
	b=KNljR9YCoPj13j9Yo1tAVKFlE+LSR5CkMBMItcmb5+v5R1UAo0IJyimxjUVh4BpX6
	 BukdlDvy7bdykwDuLbTvmOyK9Y9LGS7icOWMXIAbElSH10BhcTz6bA4sFly044HRKa
	 6faNLsRlTDC6bVjbby0xt3EeMG5TPd67QHxvtmY9nds01J6LOPNVWbkT41ahRkuCn5
	 5YeYt7z1bNF4aGXHdhfEzbutC5Wnob46v8KtdaseSwU/pYvjxC3ewrS5cVX9U7u69d
	 SCjs8Uayw6eZOM8LvmynDLXQlA3zzulKFON05SXG4nLqtX6/Tr1mRZWzMp1aEUgh8T
	 F6UK2gNWRkZaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92091D116F3
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 11:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176441657358.12753.270217708135165191.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1659b2eb114ddca1147ad04052af25d5934d8cf81a0dc061d6d1f56fb48ac090
Date: Sat, 29 Nov 2025 11:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764416573
