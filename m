Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C4342AEE1
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 06:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768026834; cv=none; b=k4mrMjwI3laErXj1pGa7s1MMBvvj5CZdJOP/qhhC/U5dMa28aJEtsgnSaxXoxi/67HtL7YSx4BRrxpC+Yi4NaFWHoDKnBMCalkK31rk4yRqV79j6lgrBq+LZ/Dpix7xKpfReLLDoQKeD/swPkMeTQTiEZJ5D1e7ZmT30EbnYRVQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768026834; c=relaxed/simple;
	bh=j5GHvgII9AI7+tNrEZ7W1YYNvqvlWGrFLELlPKuQlro=;
	h=To:Subject:From:Message-Id:Date; b=oDP0p+FhD7e5qEEvPYSoufK1TEG4Icl013z/eP4Rf/aI4hMdKQQYofQ9I4Alo3x23AdTK2MEI3/44eC4xzSEvXX4lxGH+1cbKvh8WgGgu6YGLrccCHq9lFS4x1gzzO0l7uDfI3Fkgn9eWRMJNtnrBYY0ByN/r1h8Ena0atfjIZY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XMFgmeys; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XMFgmeys"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6031C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 06:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768026833;
	bh=j5GHvgII9AI7+tNrEZ7W1YYNvqvlWGrFLELlPKuQlro=;
	h=To:Subject:From:Date:From;
	b=XMFgmeysQqjKLbQZo147ZKrvC/SVKCKAp2N9eXeW+alUPdBOYmsTGYytWnQEOsV7t
	 DK7eQlgQfzm4/b20WkYlkVVGbkHR6YpV4YvuW8+BTsG6s6zgtZkoY44QQkUMyn5bwS
	 jJ7isVOmVZAFmiUgeBOVyW3fFHaz6EpkMV/09uCH9XE0xWuIQqnjo3JPPA/zwU18ja
	 2Afbo4zA3l9B+7+PbAF1OcHVQRjhZcuYL0QYE9bjQM32zG5C+YnEFq8hDclfeVbPCE
	 fBHdd+B14poQu9FD5UAxQw5c7TeBCAMhg9W5Sg0c8UXCcyPrxZnErlcdEylp9MVgxx
	 kOXkbae6Gg5yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 959D7D277D0
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 06:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176802683358.9551.6544879216532642137.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b676eced24f18132538e91314d08c999a48fa5d06c05543adca7714339ac818
Date: Sat, 10 Jan 2026 06:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768026833
