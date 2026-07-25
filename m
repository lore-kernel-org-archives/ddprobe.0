Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4285725B094
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 04:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784952034; cv=none; b=kV15RxzTxOGHxUSllsQDyx3BO6nVnRyaN0hUTR4jdDO1xPGlwRP7JNvGK0hTHb8pF03D3ZJLmsNZPDR97rQwE8XWwtjO72ffIHfOTyg6Bk17HX1U6Vjvc2HMV2Nn52QJY2sUM1HAvmEEEmpyKvMYYcLKsHw4qMohFuSz1QJIjv8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784952034; c=relaxed/simple;
	bh=yGJGxEBhftcc1lVQbhQ6azjfGNKZ+lfKNehLGUiMtgk=;
	h=To:Subject:From:Message-Id:Date; b=uarIc7q7kLfmY5FM4MjiXm2OgbYez9FOvUfUgFI6PzKRP24foS/TlVhAfkifIhAdTTFQVjObs9HcJju7OzMfd3W9vLL/xV06/w4j/7PjPHuM6w7jJr3cjFV9iQJYRedknF9hNFJRyJCjjf/Y+wU0ZJvi7JlyOs+6Gics1Fj6z4A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jMCQjpLJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jMCQjpLJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D16ADC2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 04:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784952033;
	bh=yGJGxEBhftcc1lVQbhQ6azjfGNKZ+lfKNehLGUiMtgk=;
	h=To:Subject:From:Date:From;
	b=jMCQjpLJ0WI7uyoax2222otFQP7M69tfP0ySyKBNzqPD0HTTU/WFwfT5BVRhSsVw4
	 0UtGEsiFjNai3x1xGGGUjx6WVEmqLIxRbbfsTpPSEDyhozvrbtZPUJ8XQJChBQ9W61
	 e+X2apeuw2V14PlTH4Qi0QnPSMnKf2ID+xrvrDeb3fl2RfNrGEWJYL7Hknwj7dPRVu
	 CMDgojwrDvJt2uPGjIKcSy/wQRY58KY9js9iF7m5qOR88xInBl+9Tf6vd+ANnjNzed
	 7xIi8jX6lgcwys+sWkW616YEdpet0A48J2QC0By9GXzfaFcJqKNrSu6TXjh8EA5f+r
	 4Mg3vPLwwOmdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB36FC531D0
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 04:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178495203368.10680.3840960320524079616.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a46551bede78321819373ebf5c8ca8a3073bc9db98f2caaa45865616479b30d4
Date: Sat, 25 Jul 2026 04:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784952033
