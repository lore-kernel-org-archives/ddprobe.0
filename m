Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37D7223505E
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 09:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772875494; cv=none; b=howU4YA+8+gJkn6bxM4gOlEf3WwxL8kq5gTlkUy3jwjYsr1uIUeeNYHnC87Fd5cSeavezG1oc+SPAIt6qiGMAjRizp7gxZ2DB1dpycMffYevsXfK5PehRu9bPIVQ5mR/nVOjg7Yik+eBQK87oPqJj4ySBiE+MnGYPc0bvHc1jkI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772875494; c=relaxed/simple;
	bh=8fYoDrZ26Xkccf5jOE0qySflVXJ8Wk0pXAQw1osn+eg=;
	h=To:Subject:From:Message-Id:Date; b=i6GdYg3QP+Ya1BRS3IHBSbFo6tZVK8ZuKfEkQeTfRGZ4zpQBc6yDd+/7pl7cORK4wLPDsNZdihX3mxrliWwaotSNpAYUaC6+dtSkTKGxfsUqDNTC+oSkBx9OH67Lr6nLRyLFW0jpC81Pt8vxq9Oh+rmJ++hM2xJ8ZjNqX4U9a3g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qqJCQ4/O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qqJCQ4/O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB119C19422
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 09:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772875493;
	bh=8fYoDrZ26Xkccf5jOE0qySflVXJ8Wk0pXAQw1osn+eg=;
	h=To:Subject:From:Date:From;
	b=qqJCQ4/OTs4LVLy1/2gOfoBqk7Ac3MaxHHn+2zeovFtAx/wS3KQ85pKeaN/+Xkdxm
	 yBxMhhBaRMIC55F+OM7kFI9Ysh4NQrC6gUYV/+nMB0YfpLeXhVWXylSNiWuhBDHSFb
	 4FddhkCcmSVhqmZpxOOGk+fo0y8DYC+TSNA4sNX7TTLIOo1fkf/AI5RS6Z65Fg1434
	 gl3ziXtlV/YSZ3e0YKtUUBJ19tcVhRCe5f0/OL3aJ3VUra8JAoxQro4kjCz6NXtvbd
	 w2XcQ3unwgSLoP9KEbtIx5Y0azldxcu0ZB6q8ppG87naAjOgrojAWU2LmXsc0KtEQL
	 uGt2gHh+OLWdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 937D5FC9EE0
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 09:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177287549359.26764.8099518669971686912.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52069bce3865110f3d61b082565e8f1a32a9cac5bd5b10ba4daea97826b119f1
Date: Sat, 07 Mar 2026 09:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772875493
