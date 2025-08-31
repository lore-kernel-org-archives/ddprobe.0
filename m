Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27E993594E
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756639794; cv=none; b=EQqkWU2bbhKZJEBcRIpmQ0R6KjTzbEZH26AD6+arqWTe76BuhJw4prDczzGQe3oBZQ3OFwhSwCqlsJhLY5/Zdb1o+6GQfHVIi57b9o0SeMY3lSudcN/bvUr11TSiyBObrcvP3dpoWG/12bDqwGtdWnVLY9G9njmJdCrrwtiGGSk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756639794; c=relaxed/simple;
	bh=iVwNKOq/PzGde8g6oqZYwFYQ/93CPdHxfTJc3K83YbM=;
	h=To:Subject:From:Message-Id:Date; b=T46tave++K62rb5gqNbKUONENgLLIwYZPetqdX710mJ34q02U1cibjQCv96RVzkMuol4y07Gy5UdeuJpCxup2dzM3JzjXsaf8ryJn6zAcHzjJ80Be5wCmkCEp34wSI3O5Dp0V2IVpb+N5I4C+yY9MJnCvgD2YoXvrPDzVTcddH4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V6yI6CyS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V6yI6CyS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0DB4C4CEED
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756639793;
	bh=iVwNKOq/PzGde8g6oqZYwFYQ/93CPdHxfTJc3K83YbM=;
	h=To:Subject:From:Date:From;
	b=V6yI6CySUs5eU3+jWXschx/Mi84UqxHpyjP2WOfwmOsEBSHUCSQpBc5Hij9Jbaqi0
	 HTi7oVVB+CILpHoa4riTRSp9Ye1VF2aA3bPCcP+oo7pZgrrva3are+xLQttwV760VF
	 UFNkmyHrGk/C5r43FNpXDhGyGRR7FYQ3+Wy7sZQF8kFCOu9PkBFpjd3uVJY3/jj0jg
	 cGUJ5qTg/i96ZSFNzOM6XzmYu/V+jb2+02dGCzvLz6pcmX1FI1SrEMvrGNtDhWUysq
	 ipuEIAUbqvmVluvnFoBHAeAv8eQKMUlS/ppsfPcs5Ak3+yDYBzYw/1WJk7hQ7cUhni
	 puzTCYzA8SQ6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 900BDCA0FF2
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175663979358.14545.16789545908448784354.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de39391fa4a3774e7b0f0a35fe84b6dfd95629035cb39d0bec889a1bac7861eb
Date: Sun, 31 Aug 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756639793
