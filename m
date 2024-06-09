Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DBED5258
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 07:07:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717916843; cv=none; b=hEuEhLH3W+EQvlAPvRZBhslEzoEp1Cfyh3wXNy12Qp+ysifQO/lnazk2xe2BsP2u5G5eBVgLEOUI27OwlIaL7gVa7zjr490u5z7pmWMg9lpj8E22766eEySr+SyWt4ALHY+6Ir9G7vSV5i9sXuiWGB86W6CcWQVJGVHWkznm/uk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717916843; c=relaxed/simple;
	bh=HTKtRA/Z+6rWEiJltkJZZpee7TWS/QoYvjN6nYTOFQs=;
	h=To:Subject:From:Message-Id:Date; b=aqMzBa89a9tniJiN4mWnf5fL6zQmSgK0lsXoqbL4Bee7N4NvywCjB8iEHFNzTZmviiV90ftHM7XGJE/z12QQQNIGOkqrNuXBVQwcWvdXKXyDVVYakiNsZUeeWmV6swOhUToa46qiMi7G4VZv7Y985fCT5+foYZ3yqzjUGzXVmgw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XaiVfBSe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XaiVfBSe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0F0FC2BD10
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 07:07:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717916842;
	bh=HTKtRA/Z+6rWEiJltkJZZpee7TWS/QoYvjN6nYTOFQs=;
	h=To:Subject:From:Date:From;
	b=XaiVfBSeSS3vT67Xp/XyRTwaFiOGTLMh/1Qn4TAjLssD8TVYxr0IaFKms/PVcfdlD
	 CDz8Ll5900R0mkflE9bPbMovbeHnhl5c5fNye4ukr8iPFqVhMdI/2oIYTMtSdCFjLd
	 5bGEmkbZZwBVVo81uNSjTOuKBIVxzEhnukz6wXCHFw/FQ0FoOJDJNI5m/6fzqwnxbW
	 1yVUsJmjAIE54WkruSooPYIUT7iGea5/8ZJcc8SLfV0NsJykOIHkmvRG245e+LLmEG
	 x39YtYnkAYRxvTrVZo0V4I7QVVtfyO0ZrpbHbOSPQoNXYYm+CMdqwiq43gE7XYb6Lw
	 UTdcO0s3yigtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB638C27C53
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 07:07:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171791684280.6841.7106675606280564726.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36873700599cbf45865df55932042fafd13f03e244d9403fc2a2bae67841a5d6
Date: Sun, 09 Jun 2024 07:07:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717916842
