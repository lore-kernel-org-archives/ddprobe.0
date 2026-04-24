Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14A3436BCDA
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 19:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777058254; cv=none; b=fXoYIK8DI/q/C+Aur1Ru4mWddtactyiSEmB+AGi+Pd/SGT5zuGKQk7erG6Nh+3nNa18jhyQ0hECHhrwJaCjyC9uFpjh3fPDaFaai2fDve3ctT/1D408Bl5naWmUTu4WnFo+ZKt3DWsNeYbNCMwc2BMRxgqmwjwSqjZ4BVYZ9UjQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777058254; c=relaxed/simple;
	bh=PBfLHcU4iyh8AxtZn1NgVN/Na+LnYTE1BYWJo5cdSX0=;
	h=To:Subject:From:Message-Id:Date; b=axiLdPlTfD0yQFEc3xAKL3XxMKUX/nkLh55TJW1bx0TdNdgGBDQoIaTehccmHrjILUVkc3o7uIVbab2ok/nDP9XIiQxjB6JyudVKnFIBNN29FPapKPQTtQHRNQlp6acBEYXwaHc8HIqd2YPAEv31QNuWi8WMa5D31Ow0tT8zdw4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c8PvXgnr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c8PvXgnr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC2BCC19425
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 19:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777058253;
	bh=PBfLHcU4iyh8AxtZn1NgVN/Na+LnYTE1BYWJo5cdSX0=;
	h=To:Subject:From:Date:From;
	b=c8PvXgnr6k2DEJmSPJM7oD+m7lZyvNkwovYPs7CBo8eUaUcBwg+sQXhxFSU+M1mpy
	 USORaxAVUwOP0dyYNcuNf/ks0f5cQhnJZgOJa2S2PeWcJ6ORaX2Q+JsQsWOXjDZ0eA
	 5Ufc+E0OrNt5u7LmReOiiDCwlXkgOII+GkZ1YCxYB2W7M7z9QALFKvy5q+QRxdU4NQ
	 iIqj7fLpkycB1ta4fCpxSevL3fjm+zO4zILlWfdioZ//TPTstszhiT74+dfRwn9qpZ
	 AnrpFBcGdpQLKJRhR9EqWQxbdENkhUaCAdB6tcVeu2k+ee6Plj1wMVfzGDoa2Cb8Qx
	 5Tvv7WFBwcrJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA2D1FED3F2
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 19:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177705825368.10303.14389556537181251620.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8641e845817ee2dba076ee1612a2351ec92ad234a892fc96ebc93c17409504fe
Date: Fri, 24 Apr 2026 19:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777058253
