Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FF3B3DCDB0
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 15:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776266854; cv=none; b=K1xvyYhHuNn5Nin+mto+5sQOvMEKwU8ZfWyMXEQagmzs13WclTE/e7v2ldk2u11W+qKI+y5BpS4E0G/gjCOPz93QdbYKzxKWjtOuEHj+T0ZcGdL9qKx7WRNkDq09s4R3I0RqxjrEA70dhKxBDSQKnl2vT17Ufw6WHwTPk98scSc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776266854; c=relaxed/simple;
	bh=idc25Mm/AEkQtkiJi0nC8rSxPXOx6LSBc9DDGk6KVEY=;
	h=To:Subject:From:Message-Id:Date; b=QzUxml9FOn5LGrDr9g+jaK4Ley2qUuMiq+XeWUhWcQJrCJcN0/wjlmosQvLI6gEPgfZ3sO1OcIGUkM68PaRpi6oH56sLAOkCRTXLOvoGxUnq63ZQweGAAP0sPatw6VtOzzKzi/akhMfJVMC4rkuPGp2uImzXCgnrcQ0O2I/4/FQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u4G3Mmet; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u4G3Mmet"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC0A6C19424
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 15:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776266853;
	bh=idc25Mm/AEkQtkiJi0nC8rSxPXOx6LSBc9DDGk6KVEY=;
	h=To:Subject:From:Date:From;
	b=u4G3Mmetdd3wmz6mJpPFBOL2AclfFLCG5RoWdihNH8NVjyFZ01ze/SZHfOGb6S/PM
	 y2FMNRBEM6L+9KnJZc2g8MgfFRVjZNFLVWrDNHPDn9eD3qRZFw55Yvp0Fii8u9ljwT
	 UDUviWEHBEOATYENuMKpy7Z9677SQVfrnHkY5HIl2oZsyFEns7DioXAJBWGWyEyAso
	 wKwyKdsf9+bOXuDsBR0ih6tvMgp4tBJCtLf7T/3U1Yf5WjGPKXUz53s4XrND+ZJWUc
	 PqP4Xy8klTYq/wRcDIlEEHX660mJ+LIutiuq8lOD4NkA0qP4lNih4F3fsayBChnB48
	 BBzN5tpStrqtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC434F43847
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 15:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177626685369.21739.10062933429076744607.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0a46c42a5e04bdb25ddcd4ac355963c2557be36992d27392adb82cddb8aa6d6
Date: Wed, 15 Apr 2026 15:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776266853
