Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EFB1EEA6
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754116795; cv=none; b=CXoyv7QIw3xrqODedmpZqpFdMX01o0K6+MOrTinrbr0FMf607Dm50pd0hrH7eO3tWQVgZUTLNM3fJRrWC8RXp1bs0eOXQPoyA+9UB3meLpAkcHXz9yjd4UzoEypjCUmIh1xe2rDYt3Ds31w9TZ3X2ky2HUHg+EFOOokv5tNIdog=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754116795; c=relaxed/simple;
	bh=QBR2jljNW10RYNiSWvwF0Uzxo1j43BbyUxEZxD5bfD0=;
	h=To:Subject:From:Message-Id:Date; b=qkf4DUcaHWeEQsEtaMTKC9KKo6PnCSE0mm4+Gqu6Iff42itkVWrdnfOqum8aLhNlA1F/v5SduWR/wCxJa61SsT/7PSL0T2/Cyj42tCw/NERbpeNN2T4yBjcsz/Q8hvuZE2wRLwb5oUiszuy1lpwG9jZlILQJ7gAlh85+dUO+0aQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NMnKsNka; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NMnKsNka"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A832EC4CEEF
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754116793;
	bh=QBR2jljNW10RYNiSWvwF0Uzxo1j43BbyUxEZxD5bfD0=;
	h=To:Subject:From:Date:From;
	b=NMnKsNkaiYy33iEwP1Sdq1sErK/LLQG2nBj9OlB+gSSjx0mg83pwt92Hj7GECC+mS
	 y8ox7Q77gYujJS5d/oqFcWXDX+CZDcadGw51rYD7EGHm1lWAxu+afP40oXI5a9WEol
	 M4VKcQGjjvetqipqlh4nudW/lhDhtAiqnO6AvcXFQnMISLEeUwrHf5SHTCvJZNS67D
	 W0aITVYZGLDzulOhAvLtLQo9fiapzD84Qol3I4c1BtPFHV0qCTopb7/0pRAvpu4Iqc
	 bOBDEiSre2SfMjUR+Hee8sKPDuLQObPaRmdntHutFP2T7CUd8rVoyjIYwddMktT3ph
	 XolM3Yxg8KLgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 925D4C87FD2
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175411679358.7184.12513173627784151494.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 680de7ac292f36627ae18cdd2692b2563034d01b391b5ff9837559aeb0ae3f2c
Date: Sat, 02 Aug 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754116793
