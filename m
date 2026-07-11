Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 119F91F09A8
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 06:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783751914; cv=none; b=buyGJEyyN4CDJNNrT/l3aPoYDQFIl33JjLjAe7MLoU7I+WkDqG8jKhgvYS1xxiewEZJSFPTVcgHTYeM3v0vpqYq7LHNEl3Vw/6oBMy2DTkyTrTnD+h6YTnR35JuBnuzIa7+FF3e5H6jCtQmWNXrecKDXw3x3NtWZXsAYgaLiYZo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783751914; c=relaxed/simple;
	bh=UMEEVTBgg5jSguGFZuOFpZ0OJv5OQXiXzs7WbmGWq3g=;
	h=To:Subject:From:Message-Id:Date; b=an3DnT4ojrZRMvwrd7K2cKbod1EBgsHLoJvsc9ZkuQIfXnHOEGI+bYJc2VvwYq52t8XZXGVUxnwUWAEhQoKJP/0A69jGaVDDD7GQgekjxXA4KzmBnUVyiDHqWybhFk3YhEv19WEFgQZzQ6i9hSkLf+0nbkKoZy/BeeKsfD8MxxM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FVBNvBoH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FVBNvBoH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBABFC2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 06:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783751913;
	bh=UMEEVTBgg5jSguGFZuOFpZ0OJv5OQXiXzs7WbmGWq3g=;
	h=To:Subject:From:Date:From;
	b=FVBNvBoHLe+TnOAms9qNNt6GCR0NhHU+FdhzJUk+mX+EKAcVP6usRsQtG1DCLYvNB
	 mLSRfpifjq/CspuxpL5z0Rf71DsNlYgKcxEFPBf1CG2OHppreGriiW6gpKcDXSKFf3
	 HGLMmfK7szHeSh/JE/Payhzu4IXg6c6R2udN7ZeG00M3DOR93BuZ91Jj5i8BMjs77i
	 Mfk37eBh83YyxnWfjvtyuv8DTdKkIHp9kaLqtqifZqgG0EXJNO0+oA8/nHWVuO41He
	 BEHU7UbmRm8fQGRFRTf1QQqL09gtGO3B9joh818mceuSGfy813sBYBFfq2qPckgeSC
	 RJprcfSR5WXOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8AF7C43458
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 06:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178375191368.8476.7035598304154932368.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de4fd7f4262746401196ab55df7bfbce9344b6a7d521a0ba4f8419423d951c74
Date: Sat, 11 Jul 2026 06:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783751913
