Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C36B1BC4E
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755904795; cv=none; b=OcO6HosG0d4hQ0HW5zpYE7J0NiS6gyNpmkFC6x+wS+fPBjwhBmvnJTLswTc9r9nkr1+uUl8L2gFdlIiIhaS7LbXeQqqQg0BAPlZ3pOJLwz8PkMkPI/kqfkdjTL16MENGGNKqOGVeEzZCgo4ZLdXHSFmoUsPHd12X0xV6uSBWb9A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755904795; c=relaxed/simple;
	bh=xuxNacAEfrztW732RgOw3WEpSxz2KS7CYoz1YTenHDk=;
	h=To:Subject:From:Message-Id:Date; b=gewdcONqAybgpD+xMcg8E+RoKn/xZYLzR/PBRdGb/FsNb2xzgKSnvoUDcvOtLF3JXGecWDk4NC4iBg4CFBT3WzD7G4nRILz11cLNb/x0vUg6+P7FX+iSYotTlyWQPL19eUudD/a4b540JdOhyuh6cmeIFZi7l+y+LbWBfYRu+0g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XAxgXIPv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XAxgXIPv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A66F0C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755904793;
	bh=xuxNacAEfrztW732RgOw3WEpSxz2KS7CYoz1YTenHDk=;
	h=To:Subject:From:Date:From;
	b=XAxgXIPvfWq7Bsk2LD3/ZR8CC1+ZQlwHBI+TclPOlUgTyAdU255VCmMldJ3AVrZdA
	 Zp/HMCWstQdVkYLw3vhAQviwRi6wHDukE71gxKL+g6H5cLt3hpqxQkQoGdAvPR/fdI
	 eW3Yq5E7T/8mWLYEXgM5MAmzsDoPrkjYleymqghGy4QNqrbqAvx+UgFZOLu7wniobo
	 8orXRlwbGHxtwnDirsQ5E+zzbXm9ZfzWBnuQ1XDJnmn8q0Mtp+pKFWcnje17gyUQBa
	 1MKFZsZjlQhE/d2lHKPnUVjKiyj7QBCcMs2aeqFfEGvixSjNhs5X4MOuZzWYs1g2GD
	 pIn+P3Rt6lrTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 949B5CA0EED
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175590479358.15665.18316668371087170254.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a09a233764e2d117a898195bf47fabe8cebd679675670e2766670979b36984a
Date: Fri, 22 Aug 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755904793
