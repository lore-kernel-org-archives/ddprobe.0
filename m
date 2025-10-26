Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07F0322A4D5
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761496194; cv=none; b=R0ohu2PeaZyQuYDblv1DoatW1SGz5kPy0xQYiFHiIuhqtf/dXMRN4h3nmZhQ7ZjFIywjDW51teJE3TwnnolITTSb+JH2AX4vmOmCC+ycvcU2m/wS8C2STfh/WEbNvwYG7Fix4tAC/lZbZUQyAl/MUlrPGJ2V+w8CylVhDx2Yd0k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761496194; c=relaxed/simple;
	bh=1ZkwJx2/HPUsLCm/EahmD2ODPyehD6Pipnym3cO5EiQ=;
	h=To:Subject:From:Message-Id:Date; b=Wl43eB5sDDiqw7NredmV4LcKkzzhSFxF613eDVg5mIMdhcjCwHXP0F0WfOuMu4EbPCg8HwlTPKjuRgQ0NJ7TvWNx+YqMusP0p5eqwOHLhdbpZb1CX8g0Pe8hl9Gd2KrMkW3ClJLX8Ywxq236MrWfDOE1dRD5MxxmSnc+hzwiEcY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p3Dvxc+w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p3Dvxc+w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC211C4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761496193;
	bh=1ZkwJx2/HPUsLCm/EahmD2ODPyehD6Pipnym3cO5EiQ=;
	h=To:Subject:From:Date:From;
	b=p3Dvxc+whRmbTeMnhv2uvhCVOznKiOrkU5epxu33m3HFdj4myteljNa8/Ndey9hd2
	 1yfPAb+eFkTFcgUbFvAPpKKu0B97Sp57C65BsLqBE9un1yky/zBFSwpR//TR3Qlx0s
	 Bs5iF3ZGK+XRVXasyv796w0Q467JkSoj+Y7KvJljomoAh6AvuHv33pQnia1d5Mpb2B
	 cS5cpMShv1ZBtS8s4Z9MxoFmJ0qsJWAmfpdMLepGI5pVUblNEzqUuzJaKGr/l4iqVT
	 68TRLMhBJYKFxVQSYRfHs19X5A3dERWN8sCUd9PEGlrVgDKaYFVlTCHLo3L2bflPZf
	 hyhGu05yT2yIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B1AFCCF9E5
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176149619362.24292.6970617447190200736.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d32a44a3f8939de61294ee94213e724e87d2098ca1eba891a2162691351c1f10
Date: Sun, 26 Oct 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761496193
