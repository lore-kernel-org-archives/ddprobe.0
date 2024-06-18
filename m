Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70F614596F
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 16:49:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718729363; cv=none; b=nDtTLFptlR4mBueGbYVJgE9JNhVvDLrCOuiWFrs1c70bD3Fw9s8WLUzplI8sOvxAQnxUV3TAJVB/9LXd2L/qS5kZHlt4supBkdVNqs80RRv2/R/oeH8G9ztxiR3cqR2wGqmqSnyFHp0rCXz5AEhaum8qzhfLgzKXPxd9E4i4laA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718729363; c=relaxed/simple;
	bh=zWuCy5hkIYuxM1cEYtaYfxU4EFuJcMY1nQCZUjuaWGM=;
	h=To:Subject:From:Message-Id:Date; b=m7Irkh8h20jimy6ejdn/H4x1o6eKBuF3ghVi5taiSdZKutixSEgLqLkmUhIjEAU1sgh74fW4bG9HFRgFfSYkR3TbORgaH1YNF3V9miON82ZV7tXHrATKPtVMP7t2Rj5iB6552mRuTrTwoO+Upz3KOwlEr5LBUYMKNWpzijd4TgA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nP6P/8Mu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nP6P/8Mu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8E46C3277B
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 16:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718729362;
	bh=zWuCy5hkIYuxM1cEYtaYfxU4EFuJcMY1nQCZUjuaWGM=;
	h=To:Subject:From:Date:From;
	b=nP6P/8MuudfcdBkHOEYd7yDXsqpiF+dd2WQaiAxzS/bKscxdi7464NKcY+ZL8uAXr
	 rawRJl81CI+3L1vbsdIt6ydOZQ79uwvuDs1phZeY0nDkftoX0WZ/nZqVWrHbHE/DN9
	 4eSwF5BFDUmgTMi7AVDZ5YTweEdjhJx6hmXj2W9JhkSsWdS2yxKaV3lql2EQBsOMi9
	 zSrLUO87VaS8VgTTgRD1DQsmZBP1Y+o8TGEfo0e4XV2h19HctDrmL3kJwFmckVd4SA
	 tmkQ8cKXYA8myiymUTDaparDAYvQzfVqi3D5f8zMtUcISDsZSRwL52c2MHIYjDdqDj
	 WuQ8l+c+UV3HQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D534AC27C4F
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 16:49:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171872936286.2704.16894904426290572545.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d760fd87047a49a8c3df0ca9a798ae0268d6db78127696abb8dd8215196739f
Date: Tue, 18 Jun 2024 16:49:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718729362
