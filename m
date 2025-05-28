Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 368BD283C92
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748435995; cv=none; b=gXznL1Y3WqCtha+LSSirYX7ynHf+mJSggAYg9jVRkNbTOkV8oEwlrJW/8zP7F4CO7Pc6CVveEeGyrRQrbMk/2eYJiRmpkL3S9xgQG73CWCP12Ek09bwYC8yx5ci71G1xt0nL52yN2Ox6Yeqxfk/VU0lQN7jKRcmzk/fEsi/EIoA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748435995; c=relaxed/simple;
	bh=hStHLGRj0SuuaSPTQF+X08qmv/ygbIByRFaOjYsJ7qY=;
	h=To:Subject:From:Message-Id:Date; b=lGLbwabgJ4xUfyG3mGT9m/hApUwsf1iTkaQD1an4/9I09wInb8/3j/fKt96F8gXyzwCEQJosreNxLTnGhxv/gLcSOV+9dPhIKV3mAqNgk/oRnI7YEKQ8SYPJrfYGMT/dwoBu1vWT1ABl6uQPrYCkpfjwJ4TQQ9mTdzId4UTvtUo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qXsLI/4N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qXsLI/4N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D3E7C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748435993;
	bh=hStHLGRj0SuuaSPTQF+X08qmv/ygbIByRFaOjYsJ7qY=;
	h=To:Subject:From:Date:From;
	b=qXsLI/4NnLoT/NZrMIc6+owqcDiNnq6Ck2OzqihG+LG5++n9SJyGKOmjxPXj/pGl3
	 yLnmMvar71T3Ju72NCPVbcu1jf4Yb7Nnuh7P2+qw8SCy+ZIaIKGWVl/yeSECK/vIHv
	 3PWPFDL/gU+c9fLnIRh/gGDtoDWnQql+TNupTgSqEqv8nhqATlZa19iOS+G49whQmZ
	 sEqUkn5RPPflQ/KS/hjoge/IMhcqEppk7/0AoRoCAPtS3TEMmr7I+/FaRgBS47qASi
	 yjt1T+GoB7IIrrWkiYR1VuEJOgODTgb6liqP4FQObjUemSIwg5AHVMaWNRss9yUlU1
	 4faTD7bdSBNeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC33C5AD49
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174843599357.19422.9920729354225699904.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7e1ce0d1c374fa2f9047406c46829bcf5ae157f3cf7c0db17dc8487b84335c0
Date: Wed, 28 May 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748435993
