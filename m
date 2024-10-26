Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E4E710E5
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 22:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729980954; cv=none; b=e9oRr3yaocV2pSfKBZev/pALLpppbjHP8wbE7dq6dUg8XzZwFbWt8h03Fy9whxHG27uWoOJ16WwKqmYA47gcBa+JCXGm+xsh79h4hYn2VwH1YCiB9w08pdnUooaU4hNm6FSn7cIQf7R3r/9cqKcOWsHkOQxo5Gjv6mrCVjCcVv0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729980954; c=relaxed/simple;
	bh=fg5HlPvm409rTkX8EyQ1ktpvwyFTiMWyT9oRLDEI11U=;
	h=To:Subject:From:Message-Id:Date; b=R1KFjQ7AiNYBTSjEEXjoinVV+qEAGOP/9SBO2hC1usUo23qxLAOncjAoC5Ofdmh7iVv9ckM/aWMHICGE7bjWAlTCO1H0buqDl2Pnv+/PTSO4ixrCsMpn4Duw8saa01p7DiIrjE9eWzwd2gSn8G4YZnHpkQPX1iRBTm5VqfrGhHo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C8Wn6CiY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C8Wn6CiY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A85CDC4CEC6
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 22:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729980953;
	bh=fg5HlPvm409rTkX8EyQ1ktpvwyFTiMWyT9oRLDEI11U=;
	h=To:Subject:From:Date:From;
	b=C8Wn6CiYFXVMSGE81lSbPl5MvRjHlsf5IsnHnkx4CiN6zv6JJzePnuuuuIiunp5ST
	 kDBxCOSnC0ZnQQdFssm49a+ZdBkvpzWa/h26FnEv6/FntZ5TqroNZFKsSNCNv7WZNP
	 U++yd9n9UFlOqvFfpiWdQvwQ8Av7WuxLlmHXIG4/AIBkF4DwF+of1W5F3/99JRR9y9
	 kN72TeZTqq4IhxF9urhXdvRleJ1kbD2kqKcy30gA90GcQF1sMENRxAtlldDqSfZMqG
	 OSySNJjbYsduAy74ZGDfOSqGqq4p8cEZ0+PalrW4I0KfNlzNW3FOh6/oDs+HchcsA2
	 ibtkTP5h8J3ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 954FCD10BED
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 22:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172998095360.14069.14310056898634536238.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f13c1c360afe94ab08adae87e384570449748811a0c7b82efe548e6d2dc5ece
Date: Sat, 26 Oct 2024 22:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729980953
