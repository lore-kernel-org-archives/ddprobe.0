Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02AD32D23A8
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 11:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765278774; cv=none; b=FajZNfhXscOOc3vssdMfY5xseHEaMM8+q+WNKKFQXMGkw4yBwWInq43B+ENc+uQ/blv9+BlzKFkGjRtNUKg9JRBXT3RF8cAnGXC4Ix/3l82XeObpNmJvw7lBRFU5wfyP2W2qV4xl/lU/jmDgkycQgw7WtkFXzWDCfVTwQdFnL34=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765278774; c=relaxed/simple;
	bh=Y7+x3D68X+MGub4ZJnfizcqIyiKSpJkOe64fuLwwQzk=;
	h=To:Subject:From:Message-Id:Date; b=JHLOxeOrsMxtsDw6ujG3sKap6mrPDqyG/nO63CqvCUMFTq7Ckgul8eCQ4meQPjj1ogQQcOeJp8FIcG8d0F6AFzGeEBH/gOy8WtfQR4wgwDyPAMl+z+sCMfer5Y/oy+rZp1FYpmtT5UqC9hWZKSRjgyJHdeaqCbPLul+E2OAI82Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q/ui48m7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q/ui48m7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5F14C4CEF5
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 11:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765278773;
	bh=Y7+x3D68X+MGub4ZJnfizcqIyiKSpJkOe64fuLwwQzk=;
	h=To:Subject:From:Date:From;
	b=Q/ui48m7NaRYq4LQS32NGsBwUl6b2QqXib0venuX3btwuxr3wlJLFzL2Tk1jIrQg4
	 xUt3Rd6ZHGskPRNjveIOo2ZUXwu3CjBbGLdAeTLFzDFMMpmyuCNIXD1btLDRwmLN2+
	 /3h1pohkd/TAQbb+zKkx/HoubJuUmGHwyp51rpUzvtxzY7bLc1gDDSbGv0FJe1OaEl
	 JJc2eykmTUJNDJJIT4Kn9aIbKCLCe0T4GDjDLRNpnbIiSSfRYBto1gRdbtSm4RbSh0
	 ftBmtW22N7h5cKUh07pkFC0A/kkKGkA0cquDpL2SMHHzm4bU97Lc9wERQ+KydGX7Tq
	 /FsPB0yKcjfaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C6ED3B7EA
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 11:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176527877358.7246.10289923089231265183.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e5b09c7dd246e64a8abebe653e33d9d5d06df4588744e037ee2c324a1a3dfdf
Date: Tue, 09 Dec 2025 11:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765278773
