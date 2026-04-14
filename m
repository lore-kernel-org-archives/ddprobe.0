Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DAF53883F
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 03:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776137853; cv=none; b=JV8GjQ9k4x+0KoOKYhjAhN7691fQS95CakqCQGKWEss5pbfO5SqERs9V1DddLPueTlMEDZbroeA7Pe0QyoD8nmqkb95aOWhTVZ1kVgZJUJYjaKus4Wnau72BkIpKnClqzstm38Z/Sd0X+j6lrAXu6NppYXu98RfI4/BwmRQ4DVo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776137853; c=relaxed/simple;
	bh=XGB+D5aY2TvXe4GVovmAtLjgl6UM6gp/wVauQoG9oNI=;
	h=To:Subject:From:Message-Id:Date; b=l8t8dP1c0xupBvhcfVAQkHHVm9HOcAeODe5Cg3vizsSXIzWoXn5KGbn7YBEEuq9m7LpPQjyYPDf1YX2sT5MMv/obTJhKQ8bbQBlUgI3Pdy3R7TOJAthrf5aRIEMpE+pIrK8baM+g2ROTy5bkfL/DOxTy18MLRPDplS1PXfOFJTE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A6iJBCYG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A6iJBCYG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFE03C2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 03:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776137853;
	bh=XGB+D5aY2TvXe4GVovmAtLjgl6UM6gp/wVauQoG9oNI=;
	h=To:Subject:From:Date:From;
	b=A6iJBCYGDr+HiWXFc3lyePZBDRv9OL/Ksrstp8pHKwwbrl3X2sAjXHW9T34NoZ2+u
	 +ZCVyb5TzRKs4/whe1+lySJnd6t4bIHn9IBrEPvjkc/fhVrWr8fOLBJt+3BX9kkuYU
	 x9elLcjFoveXpLzVrPgDVRphGJRoszugJdbECxrWQAcRnE0lA2NsNoGJPPHLNuzltb
	 Sr59I46ufMD73Dc6eFZUmACwzXhJYkZTiJpOcSsw21R1TM7xfRZtD9Fx90W9/xfRPE
	 h6fXG91eqDd3jPaTZJNWm6VK9DFjqvZov3TEpaoopRigUoheCR7n5Wq1fj2YYXyH2n
	 fNHtwl4FaBVbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0E81F531EC
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 03:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177613785368.2403.15182906676776382737.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa7a4666cd28e3419e00697945782c8b038269a9b5e694b84074c42dce06f963
Date: Tue, 14 Apr 2026 03:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776137853
