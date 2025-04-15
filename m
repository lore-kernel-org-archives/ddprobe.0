Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3753E27A93C
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744734594; cv=none; b=QRIjO8auYF3dj4BwY0FtkQ7dDYjiZ2gUDCUqWSZ0YrenzKMT4Pha4HydHn8Yv5eTGaHkDpP5zeKz/8Y87TQAwVISS8/QVkc49hyNmL7Up10TUqrtHIBOVkr4DcbKxnPUPblTmRCTG+FGevvS9tl1CAEiLdgk/HeIjMaI7y8HzLU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744734594; c=relaxed/simple;
	bh=UQ18mer7AT6cqte+4NoZ4W+n0wTkNvxxVleywYDCH5Y=;
	h=To:Subject:From:Message-Id:Date; b=FCTyBdqRvqW3vMrnF0cQ6gWgMb5cECm2+VZZnhbsJfMrQnHFN66BmBDuv97iods+IUeEB2OHgAsYqIXduWyXGutaDzVUh1gTfyqLSgjNVWc4SAaW/xpBrbOVFV8Uw29ZvIlWT1QR6oPOZtbWJExLi298yR4BYNZW7hA1JOdAmvw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hUYyPg3n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hUYyPg3n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1274C4CEED
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744734593;
	bh=UQ18mer7AT6cqte+4NoZ4W+n0wTkNvxxVleywYDCH5Y=;
	h=To:Subject:From:Date:From;
	b=hUYyPg3nuq/ZB5rBKqDAm537tADSi2NIu4leLPDFylGeyTUIf6uHPqtZN8uAYLeJ/
	 zy3lBJTuoSTvoSz6ikwHaJbu6DW/rRxwHKtkOwgyGXwpLryiNoB5WqUuYMFo48Xs6s
	 TdP8WM5NO4aeCWIMNisBgC70ESnZT//Xwh3CRtT5pkAkrLBcml+qLm5rynaW7aALck
	 3dwtTwPhmv9WxtmLjk7vQC/bD5eKd8KY70PGECNQiHmXCs1ARrDQz4YCFqJ74WM0W7
	 nfdTkmpzX/EbVMGu5/9xyuBqfL8MZa4gydKqBi/DyVASzpvDzr4pJm7yJyfDD9UcVA
	 YfV4whdHzmZhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DF96C369BA
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174473459363.12894.10849060721903696047.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7e2811526ef3d05d46e04e085d7c9d65a5eb9a29384e836740a68acfb6030ad
Date: Tue, 15 Apr 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744734593
