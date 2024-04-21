Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 538E4205E22
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 03:40:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713670823; cv=none; b=EXY7i8H0fxl/zN+LtAqjgm8I3g73mamFrdR5+7rT5tc1d6f0fR4LWrItaGpyHUYNfi0gKFlMbaytzv9LYU8Ow9LcRORixCribHmt+qZDCfGUznzf5niR+J1Gpsmq6tDDXxsSdU6nOKGddyGkm0FJTmDH/vbGyFRdyG4phVxMdX4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713670823; c=relaxed/simple;
	bh=aNo1oL4MlXhJQd0fx/jr90r0nODFgKjWJYt0WwVcLr4=;
	h=To:Subject:From:Message-Id:Date; b=qFM5pMnAXFXStcXwKjU6CQifGQkADkD9+b1FRokU0Xp7W/YI194dcYsrk1RtQWw2hPbGdS7og5pvj7sm2BIwImhbj81s54amf6kWpEvfzeq2upUEDIjqeLu8Q0Q0iZqN6Uv3Wv2dvba5vM0in4vHEonw5CInaEmpFPgS/rLW6to=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RsAYhBN7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RsAYhBN7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2908C113CC
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 03:40:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713670822;
	bh=aNo1oL4MlXhJQd0fx/jr90r0nODFgKjWJYt0WwVcLr4=;
	h=To:Subject:From:Date:From;
	b=RsAYhBN7JFjGPe5psT71EnXjmJcq9kFzFv0wICrp4qm0pCM2JmDCzqJzAwz/iMixc
	 TtXTN9RMYsFybjVhh+RdKstsbUFQtLRURV+AtqH9/IAPgqWpL76N0GJxzaHIvhtiXz
	 oqTsgVPPde28xewi9KCQCezlg7HylcBGNb9lgsF3n+rfPYr4Pq4Q6lC9HTuWysMu3T
	 2TyC6hspNvBHpc4q28RjhbapUnSgXw7iYUegne00Hw8B0v6yl4iHeD7iqv5v2hpZHV
	 UlwcQT2Q1rKLV8bA7IxdC2qenU9tLRT2jRzy3cD78rrXJOJ3nenYnOpytz0460nfxz
	 17Qj7Ao1EgQKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C77CDC4345F
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 03:40:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171367082279.19206.15792646978419596330.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7f92f730f78304e8e951c1a5d02893fcb86cb2910c9c3e0fa241d419e88eb85
Date: Sun, 21 Apr 2024 03:40:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713670822
