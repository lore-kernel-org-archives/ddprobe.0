Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E37A188906
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 09:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728465954; cv=none; b=NiaxQXLgi50mLBriaG/Bp4n8Rzn9sLZIfhQdtXoSf4HNDMcMYHjv8xtj9ChuPizOPW4pGPCJKmY+pBmHkGgk7fWFgKCrFxufLOFzDgp0PnH1nAEmwIBqg/J7iUlw6XQaS49IvpuKv0KAOjCi6AyLL5hlGxj1K+lQLG8HnwpkQyA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728465954; c=relaxed/simple;
	bh=2iOa9illme+VtT+8GKJIwrk8vrv1SmRSnEMjEu1eGxo=;
	h=To:Subject:From:Message-Id:Date; b=Uh8F8Da4pMMmRiSsn53sOTYwyhsgsPj9kkJLBC2z82E70O8fyGe9h+wmmO5y+S2pbnnftY3w67cqzMSzlmzB0HfypPyHD1ubK3UuJoIX9XXyFgB+inuJCRkSOCruhcLApw4vqDbB2jplTkl/32fQVJAFaSyabiVEeTA5VvD+WEE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QrL3LxpJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QrL3LxpJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8AD1C4CEC5
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 09:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728465953;
	bh=2iOa9illme+VtT+8GKJIwrk8vrv1SmRSnEMjEu1eGxo=;
	h=To:Subject:From:Date:From;
	b=QrL3LxpJxNVq6LZqe6yDJXIkHf1KCvLpJGKemMnpjupFJCB821lxWjdDjwoRdaCBl
	 FpzoSP2JNgCiSzlTrl3gAUzRp1+NwKyCb8jQGlyiLJn3fLJq9LyCg2xQvndMn1KTEj
	 ocuHsagqLQydc+EnZIbGhK16NtZy4cM5dpb/ldbxueWim1Iz/F0JhYXhGVa1QfTPoO
	 ztHnIpPxsYFsshCICO/XeWRhbqqrHCKjcm+0o9OhS2jqQu+I84u0jvJTd3BbdGG/97
	 /lR5OLDupR0Dy7DEy3xcq9u7sGfaHCqiEi67VBoxvztptL7I4nDHhb7OtqOhCZvjge
	 qZcaXHL4r+9nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9459DCED25D
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 09:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172846595359.30157.5541394108600335842.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca0d15a179c629971bd583ae0e3081571da658b16aea1f7fc504f4fbfd7c8226
Date: Wed, 09 Oct 2024 09:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728465953
