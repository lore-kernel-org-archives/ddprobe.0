Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4434813CF9C
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 15:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737126954; cv=none; b=c8tAWN1BkLxirtwCYhLEP/QjqDJ7N1t3hB8PiKPfH0vG92gVeS+xWCfyLEwRhq8+iQ5t4BJYUH1kXitmHyyOay3g50Z1vgGwfkB0Bu9O7GJSQJx7c1khCHVJzl+zw8JMjxCk2TFH2klj4vo04su1FjzYm3m4YKtBUBa6tGUrAdo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737126954; c=relaxed/simple;
	bh=6C+F9hRg14eWq6dpvtVdpIiupHKTMQ3eBFbB/u0eIWc=;
	h=To:Subject:From:Message-Id:Date; b=U+qUOqXxtObWIMMtkgEmP02LFI4B0hj/UvwYUvZlcpitXOBdlqGJqcdlvox3Njl5eq33IkalrQMeT9KDrASg/HNcDUyKpb8EQPVJAhpMy8tbGMOrlfBj8csWuT+ql86zVEah23U6ltfoZI92aI4FBI3D2yxlgPvNSOH1ZmCZUFk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GBBF8yNL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GBBF8yNL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B12EEC4CEDD
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 15:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737126953;
	bh=6C+F9hRg14eWq6dpvtVdpIiupHKTMQ3eBFbB/u0eIWc=;
	h=To:Subject:From:Date:From;
	b=GBBF8yNL4an0zv6c8y3xom3zDRfDzDMXD2Dy0+1vYAOsVRLuiYl4YROd+1sApJAXr
	 FQ77ipdBiCNsh1bTCJxaMYs6HtyZhCZtNMwTzVYvCe5pLsrhjQjZlFI0GY4qnx7RwX
	 jkHruYR7hralMJxzr6i3+bxkKju1OzbmdFDqhJOhq9fxLmkGfCsFhqASxCHz0Wdk3J
	 JYkkbtlnwNJ1HpcT/iiDVWb9jB1OOC6Q9kqs7oxi3YaGvOxIOu0/chODgnoi+s2L0/
	 yqzxFd14mMUC3lXM1stfY4KGFcLeN+hZBOKAWqkCCVrHYx2at6rzmnyjpLznL/qUyS
	 5FdAWHKPepVLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98B4DC02183
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 15:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173712695361.24550.17346977343482085749.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0efe86ed321b2998afde0fa542c97ecaf2115a7cb4b7664f823337641265ef3
Date: Fri, 17 Jan 2025 15:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737126953
