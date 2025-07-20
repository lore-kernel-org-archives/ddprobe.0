Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 264051B4141
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753029594; cv=none; b=GfCOC4MOfnCO4rD0HQ1H0m5Bt47zCZ+c+4Pjkgml4tmWqxRGRMVJzzL7LPtDKyL0JfroNgVqRL0Nk3ha85mULuSUaZxi+QcvkQezco0J7Vw/1H+zyN9B44WjF+nQwbZuAY1wPr8M5XKM3LjwoR0lXFXv/2XJdL0axz4kj9mlOdw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753029594; c=relaxed/simple;
	bh=phnVLHoL3Dp4D0v1/qCoSScIXFVhPOmczGhz79VS4qA=;
	h=To:Subject:From:Message-Id:Date; b=qzIRSjUKNUuzBHxiMuldLNNAaKL9ow7zAHsiQ0L6lBqcDAlOK1l+KZ4OjtnGQur2BjKIeXpHmIckp0WpXg7ufAJbSX4n3vrSe9DBnhEZoN6FMuCNCz1PevGlCSKKhtMK7caSf/0OdDn7RroNIXaldqZcOYk+V5vrEbNEPqASnXU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uKtClqdX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uKtClqdX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A90A1C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753029593;
	bh=phnVLHoL3Dp4D0v1/qCoSScIXFVhPOmczGhz79VS4qA=;
	h=To:Subject:From:Date:From;
	b=uKtClqdXwfo/EaJgmzxp9xqMFQB68K0JvyvFZhiqJOclyauBhnlL8Ol609ma61Rk0
	 8dLkNL9kT4J8vXpAQZhUE7cd2O0ZyFt/YBxQgN5cogkpYwZAGAyLqR66kFvZJdkYJR
	 tY0fsmPsB97O8systt8hN6/Zer+9XXMy+je2A+2y0zSuJvCFqp8sR16DcZe7d/NW+V
	 LTK5mVOmrrjYXnDRkJ/Z9zhH/yfyoG0aFJMVJ40W6Crs7WUHxAMEyPeJUCevOiUeqv
	 M+ytwzi6+hvo1yRw3gYzIx3WzdWxqpr4Ns44jdwWsNM3WLE5yYic6fi7Yk0Wnt/rHy
	 ++xIa11Px8wAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91FBBC83F22
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175302959357.1347.14196135330548428289.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e576997bf78c933d4cdcbe4fce2d868da61c46937512f28bb718a5d07cf98b94
Date: Sun, 20 Jul 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753029593
