Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44DA6250EC
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744166995; cv=none; b=sGSbdgDp4FBHLY0Eqvvuof6T3GuefxeuTWcw/BdduQFibGcuzyQaNebhHOz+GeteeEK4BGxAfbIuRfQzXi0PTRXEqnO+oNKLcaSb9rZNb0Lo7m9mUMoO/RgnZwdE4K9CK+WI5LXFEyVTNgjvfasDl5GqHpjxaOcbYuhNbCJmKhg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744166995; c=relaxed/simple;
	bh=n1PTTZqGnKem2IuyNQmDtBo1dZ7nwI25IEAQEFdMFsk=;
	h=To:Subject:From:Message-Id:Date; b=Ul/Hyv6xvDJuM4QMfCgr63KHYaAKuxIuyF+pOFhx3kDr39zV/buPCAe0hILq8i7QUiOxrTKGvFA2pwA5MRmCQnP9GiHH/sW4ihJGwsjbknXuDg/r0fEHIYrbRNKYm1MMEo8HP1Pv9m69FQW3n2s3TylBJrjQ95bIf6eM1IDiTKc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iL/24GsF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iL/24GsF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A958BC4CEE5
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744166993;
	bh=n1PTTZqGnKem2IuyNQmDtBo1dZ7nwI25IEAQEFdMFsk=;
	h=To:Subject:From:Date:From;
	b=iL/24GsF/e9KqcdD76mLEYKOpt2IBbKMNYyhdET8483S9y2MMfcMdZO/ZY1u8SA6N
	 UvBm6xHBwvldu0zGu75k8Nd6yWjWGft642nKuCkOoTasMsZgKBOcXwwnaZWOgZGRF3
	 4vs6uZRpkzM0VFF1mGdGoGwNKYxN3sBl8h2gL+S8feDwv4/OtqiaDQY0iNFTsfoSOd
	 MIBUg8mLZUVsBpHW+O9Ka3db/Gs3oXRMMWjYyuZzhnvWCVS5kGAJ6jDArHZ3UB6aD1
	 UFAU8klD30VmnetNczr85gwVjuQGg0x7iOnDOuI+dI7QxQY/mLioc3fQCLkV1TRjka
	 m9+SkoW4d4bbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94BFCC36010
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174416699357.31269.16025976865751782778.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4522c88af436f6ca074c492ebc1cb18223723228ede4291e893e6639bba2b548
Date: Wed, 09 Apr 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744166993
