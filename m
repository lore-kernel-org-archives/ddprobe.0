Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 312BD13FEE
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746059994; cv=none; b=k+Z+KmZ+6TNO5yQP/aNoTYjSBzt6VFVHZn025kHUgof3cA9GBlfB4yjdErXoYymQ67aupgsd0enD3Nz/Ac1gWDdxvR6I6IE0w6RzebOE2pmqS+NBD3kH0ahecS2peX44bfHgj7/l5Eo9ICSJjMT00mMCXUz63okLOTTEBNkVHHU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746059994; c=relaxed/simple;
	bh=7wd37+6D4oRnB7k6AKYft6dr7Wnf4JGPA4oELJbttbM=;
	h=To:Subject:From:Message-Id:Date; b=Wwl+4ut1VFJ9AEPOM6i6CPjFrRHXTzgP8fSajUg+HxewI5z7V7ArawB26j/8LiHOhGMaQvSikelLFt018v7pW+pXIZPd4aaDlpHwhxSywBmTi6F6S5jLcfaeWX1jZyutL2IgAaeg5uw19+kcc40+0kX2+N3Kymq/TIiqN5aNWbY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZQfTSovA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZQfTSovA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A80C8C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746059993;
	bh=7wd37+6D4oRnB7k6AKYft6dr7Wnf4JGPA4oELJbttbM=;
	h=To:Subject:From:Date:From;
	b=ZQfTSovAK/IJ+IVduIsW/lPUbVNsVmKOLH6nMyt22KHXVvkAgbVAvLOZH0lj03ujq
	 w786lujDktM2FUkG2TqvMZnoAYXgdbv0+vNbpKc+JINZMGOL70GZCxub6CFBiJmOGk
	 jw6BD1g+H/9NKEewy+tpDwcDNJUjiQAbAJqM8KCEAPIX+BuvyKNpJSugQhEbKgXHQQ
	 tlFaikd6E+usMXoEJPxJX/U2dOGYdDNjnKqWs4LFOT5Zv5v1+zbvf0W9p+3iiSE8Lp
	 +4ObfXgjGhspzoJpQ7iXdl4NE1ytukNPMooWtu4HsaLrVH1WHyqyhLDaPYmECvXPBX
	 UckWAXe1as4uA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94EDAC369D9
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174605999359.32445.16550062516025687381.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a37434420048c5fa8cb1421498590936b29ee6a3e1dd95b0dec31eed14c2e540
Date: Thu, 01 May 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746059993
