Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FD562B9BB
	for <ddprobe@lists.linux.dev>; Sun, 29 Dec 2024 10:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735467954; cv=none; b=U6flxhP/5O6SsSB8R9qUrpXB9gkS/1rFQdV4i9zKZAqwEG2lSkaIXSeGOgjThZd3bsaytmLV4+8eWcC6jxw61VqyE0g2kQ1aotWwCJYpEijWSb+qk47BQB1mGs0kIVJFbqj1MeATfcsxGUJifbvZQNAB6xXcE36vv4wmK1ERvO4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735467954; c=relaxed/simple;
	bh=LhcJVl/i8FOPJ0CWH4WyXKNrXeLx2pCaoleV+OxgbxM=;
	h=To:Subject:From:Message-Id:Date; b=XOefU/CAi66iB6Z3vYfMb+iTsYU5QOzV38WxEdsQq3TLNBndy1R8A1zGQ1mXpSy50vim1rDa8EUcSiwbqJE+CIqxtflzC7DdKIOpmMJpIQh4ocrmUkHKJgBN8SOMvN9b98V1B/Yr8DbsMvbh0Bdf8p6lmq+wTh8ejUAjwiW+5x8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=deSzaYRb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="deSzaYRb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4992C4CED1
	for <ddprobe@lists.linux.dev>; Sun, 29 Dec 2024 10:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735467953;
	bh=LhcJVl/i8FOPJ0CWH4WyXKNrXeLx2pCaoleV+OxgbxM=;
	h=To:Subject:From:Date:From;
	b=deSzaYRbPv0fQn/Ajm5A9aOBJ7+FaqPtX5Cqi5PRfyVMWRxtcSCm9xaC7IBjMZmBp
	 RE7SEx6fyzxjQtBL5Wrh5c9DS38R6y+o4+mjrXBrLziqLngVkDwv0Ayea38CQVfr7F
	 VSlLc8WEAZOdc1h+8d1B0RxqSSkJ+/P5ySCEEcqmjnfFQ6pn3u64mOQRceQWmGgWcu
	 BAmrN22RtUjCedfUmXHuvB5yIxbXZlF0mAMKYr5goXR5UvKTqy0tYPzMrgq8Sq+0m8
	 SCQwcj2Y52BvHBsdj7M3dM95WuRJ4keo3BIcjFVGAMmffUgFJX2EriG3iCHrfuV5rU
	 Dpy3fiaTApW7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B819E7718B
	for <ddprobe@lists.linux.dev>; Sun, 29 Dec 2024 10:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173546795360.18448.5445225767137689118.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62f8bf74c2640104a900fd226acb12be19a8aa573e87a766332c5ffd27317df0
Date: Sun, 29 Dec 2024 10:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735467953
