Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DC5B1B3B19
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 09:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765445574; cv=none; b=gcQwskZ/NpUrxJyAd6LdJp/DLvTngf4uEdcQt0B+Be/LdUkMGv8jCzDLI2aFz25ne5Oq5wnwLcrSmbf97AeHG91Ku2nfzEo39kE67p3vqw2YjLVLVLdyExUmIg8xFmEVSwzGfdRJ+dDXUmiYaVW0ZxHwI4MuDM9Q4y5soh2OL34=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765445574; c=relaxed/simple;
	bh=jL3JkFiapjg9aYiR4VKSK3tjqgcHw2QcwXUeqE11OfM=;
	h=To:Subject:From:Message-Id:Date; b=uw0tBjY13sdv3ot4n/3I6JakuJ+B+iuP0WDkQeUCD7yfsuRmlaNZNrNzYYTzTEhlCIg7ZK8EC1pZgPjwMEKZ/P5or/IjpRKBWQJnvK7YeXvGPcOFdET8CInDrbyeoJcRDF6zqyuT9L4c+UTNxHoe7B8f5vwZ1zS75kHLc0YnzrA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NzphbGWK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NzphbGWK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACEA9C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 09:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765445573;
	bh=jL3JkFiapjg9aYiR4VKSK3tjqgcHw2QcwXUeqE11OfM=;
	h=To:Subject:From:Date:From;
	b=NzphbGWKEFDM8767GIDf616Au4b+UYF9YWqHj9jPDWrLZ+2FQUrYsTAVc8avYBVgj
	 hzJpPBE9gI26qH3NYc06Dr0xouewWsYXYEQRO2dvfr6JdIs9ha15jSn8sHSVGn0JDh
	 1INtxBIlCt1sKPiZ2kgh9hKrEaGW94/Q4wqu5pKnjTXecw9ZiM4qLKSnovy8Sqk0EG
	 QOltbC4/n6/dDqGaCCrsmV3LkLAnsgPOSdH0IZQ2OUxqZJr7DtUHkZAkZCuPBXzCBK
	 M1ptETgDLxpAmPhTFGlgL8R3DiFOMA3aVj1yL3fGHs9iLQk9a9gNlSLIPRyrnjR7Eg
	 CwTDmUGHwLWQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96BC7D41C15
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 09:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176544557360.11132.512640834104597372.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e68ad87d655e9d9b621772719958597ae27adac593d86e71ad799627377ad0ff
Date: Thu, 11 Dec 2025 09:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765445573
