Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BFE842050
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 04:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778301454; cv=none; b=K4QB5AT9MuwRR8NedDiy1oTaNB6lFHwhB3xJVvM5sNVduTaWFS6ZEXsbmhXKVJ9IodPES+ydrwONtALZlm2d+lwnJJYqewCmoZOVA4roO+MVPjvPHbxBe7KR+ssFRFkjMPt2QxmqRfbe1BijPpsxW8UqQTp/X0GPzL9z5UmSWKc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778301454; c=relaxed/simple;
	bh=MpGBjnnc42jBFdMEi6+qnOwFrQA9BSr3yc4tYmOcve8=;
	h=To:Subject:From:Message-Id:Date; b=QuTfpNDyNHYLxponn4vCzKPVblTdM5LxsnqWRGqvfJd+6iw0xuD1CxA8Vc9+aTTyOuNDpbcSAXtiUAJyUnwhJD8rNcybiIFFgCCgj9qh76al8o2f+Oa422pMT/pfWaUcWxboD2Gax7izz64wfGGQyJmem/mehXpIdzEpJ2RBcfE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IaW8AGZu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IaW8AGZu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C92ABC2BCB2
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 04:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778301453;
	bh=MpGBjnnc42jBFdMEi6+qnOwFrQA9BSr3yc4tYmOcve8=;
	h=To:Subject:From:Date:From;
	b=IaW8AGZubTKQQkym7SjNawbfZaIOzPeusQGMK9ugBpVT5yXLm3q7G2C4f7KmeWrz4
	 4IFOSQ5Iz3D8RjBlt8GrlBLgu7L9W4AMSNXRcI1ZM8Vi5+ymWBd2cATCrAPOALQILn
	 DRkVaPodty5viU08EZdRHCbQ82+Hc3W7tnUi+0WBiGOHcFgr0LcVsHXe1Ufn+hhNgK
	 Y3hxteS1fqQSpVWJd6x8fVWe5ycQrefQHWeqcahGxqyz3xfvKOwTbSTWMtJwYZOdyh
	 eX3DPb/Gl4FdTjC+fDuQwwVb+KNMAY+ejO8rWp+zp+K5Q1vCiga9GcI856CWp9WUOn
	 oay28i9GdVWDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0E6ECD343F
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 04:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177830145369.11548.13758260814956579346.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3b3f9aca6cbaddc0f7a0df74900cda681d7c6bd8e46d76ebcbdd04b6bdb686b
Date: Sat, 09 May 2026 04:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778301453
