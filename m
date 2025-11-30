Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FC8618B0F
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 13:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764510174; cv=none; b=CCPTIUzmdCqSP4LXf24YrcgzeZP7qcAPhgLI8rI5goMb6kQuhzBAVqnnT+h+G1CoG8Ztits9wQqumRlItZxTCaN/K6VxzfKLmA/mYS6j9vxXhZJXM5Ym9ouD53+Ma54dwx3WMSvTMy5gXK8ZFTe2hj+/yT0FBgV6DzxPnsSxoVQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764510174; c=relaxed/simple;
	bh=GJG80tIFAPTKewohooefCCWoEOO/vaD9mzAdv1B6Quo=;
	h=To:Subject:From:Message-Id:Date; b=Y7N8RBMK72hy4Iz5eYhk1id2vhBrS1AeZ2IELgVuonUANAn+cmmXfU63T2/fHyIUaYJnoWCBM4NwT6JGfHM/jh/uoQlxmZFB6PagnkHH26C0hcfIkNarg8sLi1NI8gUcAdVlQBqlH067aVfQpOo+ywskD3InMMfU82CpADceEkY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WTJuFqk7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WTJuFqk7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B411CC4CEF8
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 13:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764510173;
	bh=GJG80tIFAPTKewohooefCCWoEOO/vaD9mzAdv1B6Quo=;
	h=To:Subject:From:Date:From;
	b=WTJuFqk7pWS5MuCacLV8dJ4v316z4Wfidl2e4GXDJ8AjZ6xf0ncl2LPsWalDNePWn
	 jGCXKIuukrxpJuHKi8UHmMJBxCQmgFVaqN9YOZ139uPo8CIvmNcOZqoN1MU+z3CQeA
	 +wnXjw8PndRLLU8xbOX5yYORvtGaPHgTuYBi2x8K3mWzjyY4oQp4aB5Z2xmf/GyM9h
	 NWohpkxTSXMl3l/dy9EdYoo3JhRey4bz+5st6wG8Xig5qdLm0dh3AETLEk4EdQMGip
	 QIa4CU5YWvbpzwyTJw5Hu3XRXQBe2lS9RGdJW2Rd17QwTnIBEW3xpoy3pFF2Gnhix0
	 NvvKoOpGi2dig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E304CFD376
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 13:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176451017361.24446.9789569741088235408.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5443c502f8cf214520da12a472760e74c5bd62d644f39a4593e3635bf70bfd10
Date: Sun, 30 Nov 2025 13:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764510173
