Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3220E51C5A
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748931594; cv=none; b=jjXqO8/GodGNYpvUTX0uKdrqLthKEMpf2r40/9pmVgZ4LVCGOK03qh5A6ZyRFMl+I+McgjNdKWFL7aCFlMUn6jf+dosUa/tfsGz5R8V0y/lCcG4VaZjl20k+Zj+9804+p64r4iWVc9P3aCjw8FAust6LYs1FV1tn9gNtQ/VZRqk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748931594; c=relaxed/simple;
	bh=yYb8e94oFK1dcnJXMZggB02DBigA1p0Y93jSe0fyZxA=;
	h=To:Subject:From:Message-Id:Date; b=P9rUwCQSd6D4m384CBIG2tmz1otVU3bk69l45UPCMuJA4pwnWWv6QXrg0YBaSKHm3n8Xfc6QWzVpkg3DWvlcKTHgzxGYyfQyHuKfIot5zxqpjEkYxW+GIYAz5HSjT43EbvSSIY3MnXeup7RmXcjH25sO5hq0MrvnPZA3N1nUWiQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bj4CDDVv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bj4CDDVv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A474AC4CEED
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748931593;
	bh=yYb8e94oFK1dcnJXMZggB02DBigA1p0Y93jSe0fyZxA=;
	h=To:Subject:From:Date:From;
	b=Bj4CDDVvmxjvZ17Xf4wnhjJcbYL+3MapM3qXUv0vsDy/D31pxvsaeZknYUJ93BesM
	 4lvkYA0cQxtff0yMfrApHr0EL5LuC6OA6rgT/Rm7i79n9EDNZRRS3uYix1mmMCxgYu
	 vJT+xKe5TBcgr7dW/yE/5eix/WKARft0j1J5uphhWFWIrZUM3EKLBuyqm1ilE1+7Gf
	 g77P37NBkBR0szYSUYwXsEF+2xX/tbsjQxFzknZjWFwHsh1k3+HGsIDfBeYEXWd7U0
	 U0o/UorxyAym1W27Po7ck7L9qSYqryOfMZM7c0k2vVBzVaAgXByStBpaplrPB39D7v
	 OWdB1xe6HvarQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E7E6C5AE59
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174893159357.6780.10468740259580508526.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 541f245c68577eb2a9a909ad042413fe5e0c5d7d1ae58a751101d33242eb2a30
Date: Tue, 03 Jun 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748931593
