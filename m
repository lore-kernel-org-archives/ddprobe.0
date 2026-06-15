Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D3411ADC97
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 02:16:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781489794; cv=none; b=LPqn6QJv9+vjwBAucqZFLCdr9RQl+FsQu4Z+EcpqPBAeWA5Yw3XZ4gcRG4hNV8oAa/n8leLw8IV8sjGtAWGUMdwuIEgiNqBSMxAjWjs7FPyMVzEA3t0jwMm5qQHCiIo+m30oe2pnZKFMbUhlk0T9HNTbL4muZkhFxddC2Z5MKYw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781489794; c=relaxed/simple;
	bh=nBC0WdDV69v9Cvc2hS6brvYaNka7GTqTLad7fBXV/OI=;
	h=To:Subject:From:Message-Id:Date; b=Jo+5FRYNbSfuDx3VwkIF1pMPYfUn9IkcGqRItcxqFS2wcfdo19GzuRKaD2xQ8JRgHqzRAKBweInVkvAIzQWXGeC6P7/PVhH2HwxWwaXNPfrqDpcFIe4KSyniyvWnIS3N3j77CxbBuuB8Onlfo4ds8sNG9mEwQgH1l8pR00anfk0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dmrz2Z1f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dmrz2Z1f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDA47C2BCB9
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 02:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781489793;
	bh=nBC0WdDV69v9Cvc2hS6brvYaNka7GTqTLad7fBXV/OI=;
	h=To:Subject:From:Date:From;
	b=Dmrz2Z1fXwkD0vHmMWkvvACHWmDXHCVbsPHIJodSs3jQgFSIc8JZ7b7+Qn31EVjgM
	 q+ShRsfOLr8G4XgFnww6WsppP+UtbUKuWNIJ2rYHVBk3m5wpbuZUQfrbb3F01fsqJ/
	 VPf1QwUsuo2WFJGk5u+RG7SK6gGGZKL5DAQNB7pdQYRG9AzPvcUvwGx9TMnSzLnp+W
	 zjwHP0qv0ICOQ5lCxhMxxKMOQC5XR/0JENR+ATvDZNu51KsNWQc6zRMboF6MAubK6j
	 uXUjkT/v6o37I7Ui/NSZZNLSoRC1/sWv8HB9IpfylVnwnHWZDG+km0H3ZxQmU6XxO7
	 x1UcWUwJpMajg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2EACCD98C5
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 02:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178148979372.9118.17589128411125831087.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1892a7f4bf7ee32ee3026c6682536579f86486e771b168657147e043b2951c3
Date: Mon, 15 Jun 2026 02:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781489793
