Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 534AB17A90F
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 15:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738425354; cv=none; b=DG5x2RwCTjEhkWc9TkdUa2tLsTw1tHQxYr+YTIKmoJgUxvPC6dM163GEfI+lD8Wf9WOPS8KHdpY4Np+EJW0FiSE6fGDepMz+uKcfkY4Z2dnuhkPsw1terqf4k7xkJb49hL951VfP1dVvWQIPM6c7KlZ9tuoaIeLp2gsjjsR/kX8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738425354; c=relaxed/simple;
	bh=s4epfnAPVnSMmUtrjAAE2957H0NVZyme9wz8J0y1xPg=;
	h=To:Subject:From:Message-Id:Date; b=OeGu+uhQLMGBI38R0XA8KbrgJIhpPTebXT8w6YEJ/6dO5En4rfIa2pd1byIEPpnnWWHkKt/Jz9B4bNDEKeyTzMlUcNlcQ3XOHxUpFcQXzuAL4OpE5ieR/OCNBfG7GUYi6xdtp1TfNEfpq6GPpM/E+mLbaK9P8SfBHwAAFw8bcgI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tPUbe+Fj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tPUbe+Fj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8CE9C4CED3
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 15:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738425353;
	bh=s4epfnAPVnSMmUtrjAAE2957H0NVZyme9wz8J0y1xPg=;
	h=To:Subject:From:Date:From;
	b=tPUbe+FjJoPFJei3FczFr8SNgm0vBDkqDGT8JtCadRtdSrSBM/D6aq8xDyVpuSRkn
	 3AE8pNR0mclDr9EMF/7LBrzZ4YRboBuTZDzaSHxXMyzd5YvuYhBJGPg0wx4YJwx7qV
	 thct1NRHuI82tDBkny6fJzYXLui73jcVVTSsHm1qvqysukoQBO9SnrmGDfm+acUrIo
	 +kUqK7qBMm6W7BhvB+ta1bsgHwAzDiI/qqtpN97DEx7MjeWOlgVBpQOokf+Q10GPDa
	 zWMEejHKG+ZR1VbYEdDHZjr1MuHns1eLRY/ivt8n2ZzOsXC8Y35OVOHhDIiwgzy5db
	 xc5pONEJsn+hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A152CC0218A
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 15:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173842535361.17893.7520044536791430259.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4ae6acbf80387a2d6521ec121cbfb648a3ba140b5151da278139c939b864269
Date: Sat, 01 Feb 2025 15:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738425353
