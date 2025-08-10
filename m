Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47CDE8BEE
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754825394; cv=none; b=p+tjtoXeLo09wKfbGL/6gMHGZpYph+CujrjdELdZpNMrUuJrM//dvjNkhqgtob1lpdg1Sr+trKz1RHTF7slUOfqFi5NCZAUkMfzKX/4sRNNHKrahuADejrk61repGq2bh7G7bvFN2GiCEIuXufmcPCZk9ij9Znt9ZQRPyEP7aqI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754825394; c=relaxed/simple;
	bh=D6Q73SAHaJmgAC9fyROQvv5Qe6LmIqPmhBGq6sH6xtQ=;
	h=To:Subject:From:Message-Id:Date; b=E8dGLhAanGIrBbHgXYG61+PB40tYUReDy0iN+iuuvCQyXgz3R1QGDGxHFQvkkPb4D5pVjLiIhoMSLSj/b/XElZEhAT51Njb5yCxstA3qwiTkj5eJhY4f2gy3kYqRQSEiXPSC8Bi+Pj8xMKbFEAwtfFdCYnj3lq6t1Vn+yRcKSm0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P+PV46GU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P+PV46GU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A15DCC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754825393;
	bh=D6Q73SAHaJmgAC9fyROQvv5Qe6LmIqPmhBGq6sH6xtQ=;
	h=To:Subject:From:Date:From;
	b=P+PV46GU2zsnSlqqP+XMd6swJ156dE1WqP4AlWTvtd8TqfRTI/wfNKNt4gOswXMAy
	 9EZheDUfw5qROqddt90B7xmN36YW7XJVnhNY4AZnG/KB3BZ4Ab9wAD0rE9n0hsBVtW
	 zNngzo78ykdhOclpF5TNXz4aXOSrrrLQdp83bTabKiEs44GVTn7XRCaDA2w3CCiSEm
	 gsTpedQiknrlDXfDn8Ex7IHta0syPv8z7mi39rDTkae0/6oO8YAzulWzPQFZdehSPa
	 AJnJf/jGRUh9Pihqaaw8UX+VHJNOlPJDjzVBgifCNenxrYm3DMAFyGTTv4cHC/ZQir
	 M8kgXvl478TWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9351FC87FCF
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175482539357.18631.6693505895679776654.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4356e46ac7bf115f3376fed4a4656f7f3850e7c4cb98b82b38ebb6efe7e3b21e
Date: Sun, 10 Aug 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754825393
