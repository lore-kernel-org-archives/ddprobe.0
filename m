Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1337AD47
	for <ddprobe@lists.linux.dev>; Fri,  2 Feb 2024 01:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706838497; cv=none; b=PPtUbFJgw8xXYLMoyQCCOxG8esLkkuiYE7SmBSPhW+6QZKtzZsZcQrdEJy+W0LDTR19klwWhJyihuRPOgOvgNhKr1IxFelgDCg5tD2lAlis5Qejf2sgf+Eac4vslQ7gH3rLh4iZumE2lbaaKQ6j8GEkmlkvGOxrAswGkyb2EXak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706838497; c=relaxed/simple;
	bh=ldxnKynlUS6vdmSLTIc4lkl2qWYPvGQlv11IcdHDWRU=;
	h=To:Subject:From:Message-Id:Date; b=F820HJR9yiiWllT1cdUBHYbSyuBVqH8w8eNGIgGBjpO6qAGqvtvDaYWKjhje3KYeYx+lwkBzJM8aLbl4on4f0drihWzpuL3lrDYa1CpIg5XCIpdG5WCOalE78Ivdxps3+f545Gvl73BF3nmvgnUZVWcfBnhl+LxUuPpi6nO4MFg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MpcPwACt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MpcPwACt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A3FCC433F1
	for <ddprobe@lists.linux.dev>; Fri,  2 Feb 2024 01:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706838496;
	bh=ldxnKynlUS6vdmSLTIc4lkl2qWYPvGQlv11IcdHDWRU=;
	h=To:Subject:From:Date:From;
	b=MpcPwACtNVhwOYzGQHyLCdnyKPK64fbB/UkGDgc4X2f6qhGh6VL8H6Dd0t3/6nMJF
	 HXtxozYrCCPyZeHleVUiaXcL0UDL+pfY6dNLQr5J8j5yrGZ89mhcXReLNjvtQJTIhg
	 Okkt7d7e1qk9WglzsgR1TJRpoFBDrmOsFKUte+mi3iwasLhEJuNkx9ZpmBDZJx+aem
	 8d0gZf0Sv1f7VanzbDseieKrW0lZpeJR8rt6cML7uyHc0WIkNIEP37TfU6Wt9MOm1Y
	 aFzwvg/sUTC2tdFJIqindkka2ZYjDDZDgN8uKLlKuUPuHdrwbfIOOTEDyyCl84HPlh
	 ksfZbdcNXXUFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 607E7C48286
	for <ddprobe@lists.linux.dev>; Fri,  2 Feb 2024 01:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170683849637.16529.17660310790124213635.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e008cb83d4b4b058d1f7d214870980f6b05d0452f4f299459242447196e5469b
Date: Fri, 02 Feb 2024 01:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706838496
