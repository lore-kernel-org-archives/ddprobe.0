Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFB3D221D9A
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748469593; cv=none; b=YnVc3XukOcM+xIN40lzs0sBORY6T36Nup01Dap2t/HKGRD++CIgvhJKAMT7v64JLG2nVtXekU+ZfNE5CaBcj6wOiEp4nJy2FT5Iesf19kFo8MZLDcsk0/ov0lkU7EgQIV/OBFmuIkjDDp646ZuuanfWiw1OQnz7lcwgL14hRoFM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748469593; c=relaxed/simple;
	bh=fLdJcS81Ez4R7PPuQrgSGkFTr2pWAiV9oZdaOGvWI1A=;
	h=To:Subject:From:Message-Id:Date; b=fCrt0jIyS7Z2tdIy9T8ZmJI4kpDcOL+LHgD19aqxVIcRswE/H3fIFo0TD3MMBH8OzGLbJqwU2hY1MfU232DMFq0gLT0qvt6EMfx0KY/H+Gbjwdk4xNJmaH3ltx93hqWUz2nG+ixyVfwoI3tVATnO385V2pR41ZZSJfaiF9EYxOU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k0P63J+j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k0P63J+j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E7C5C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748469593;
	bh=fLdJcS81Ez4R7PPuQrgSGkFTr2pWAiV9oZdaOGvWI1A=;
	h=To:Subject:From:Date:From;
	b=k0P63J+jAo1wLbkXJRsyJPQ1pMmkjq34I674X90sCBInq2uKBS599v4tE1A8PzJ/9
	 h3l8pdMunSIKyM5UqQUUhTZOwltE07hkpomBNYwFpznnPLJAKGXZPMqX1Tq1iPpf2r
	 TP7FcJesSA7uteHJE+yEodXh/KXwYMihoG28ho/M2dBOJz6mG5lCIppcTIzpZMK6oG
	 bP7HlRpFNY6ONij6Pdrjz65PVTuD1DmSus1nGyWvssZiy6was6hyxZ53cLdEGASjMM
	 n55qJak4lb7aI3XWuZCX82H/dvNIX2QHjjjEsscOu6vdujBXYaPpG3BNwyU/kXYcGi
	 Z1a+40D2OaIpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB61C3ABB2
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174846959357.17051.16906973552259132915.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d19dd3aea6ebf431503f9c0f1c730ab38e20cb5427c952445187fbfedb2653b3
Date: Wed, 28 May 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748469593
