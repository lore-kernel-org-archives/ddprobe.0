Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A30521CC4F
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 18:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776279454; cv=none; b=kVkwXdBJFOFchtzIz1xxUmzBHc/DWyGElNil4FQEjBA+arpAO4V9iKrZwvf0bf9M7XfMYmU/tFr7VAN9YVIN7XnaVpL3DSw1+BmWE7SuLMcfoZVI2tMqCjV1rCJNqYNCOAIC+B126YTLLSdD6uMADaP/+Qrd/suxJohx9NSNnhs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776279454; c=relaxed/simple;
	bh=RpXKyzzrN2jWOiyGs0TRkruAQa+LC5cLyV9y02TinRI=;
	h=To:Subject:From:Message-Id:Date; b=SQHCX9h9vmOVADOXqq4kkMxtHm2vgXfczjo7EsAQWvMEsOCiGfxNPrmmhHGJ7WgE8GYPpliOOvHBsGHSnwUUikzVf4KzISEZyxw8KQpM3TbUiYlnNPxWyuAL8V7cQemsB7MZvjPVsriZpTHXicFFQ1apL3DW2Uk3P0f5Q6Mou18=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OLu3SWsF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OLu3SWsF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF679C19424
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 18:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776279453;
	bh=RpXKyzzrN2jWOiyGs0TRkruAQa+LC5cLyV9y02TinRI=;
	h=To:Subject:From:Date:From;
	b=OLu3SWsFEko6KXTkN4y1mUYnAsj8BmeDtjqYpHbhmQUT6vTwkwXlAF8+UYZ7IXmUu
	 rF1ld3GYQVFiFwEbx60fKOjMGN0Q0kFr88N+c8do+Aem2O4js9nSBeXaNafWRt+mGK
	 h0TkWNHr2Qoj73w+ToUVtQRawCaJcBrKazz/EV/SznXujHXfq94iyYHtWLbXl3/5Rl
	 bCKRbnn3Wt4Yik2FxsFUQCjkJXWaNPb1WdjL9dgiSB0Rgktj1wYbh1A45pHrCJUiw5
	 2N56yo26d4HsTYXqHjGnxU8uP7vdmzHmaqe2phKoTqtio+o4keEGC67dl6vejC7P7Z
	 F2ucziFr7pdHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1065F4213B
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 18:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177627945368.26446.16406540411984520027.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e29cba6c5055864e02f3056d96a4717f6aec72e13bac9f246b9f6da1ea3c4af4
Date: Wed, 15 Apr 2026 18:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776279453
