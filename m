Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36E1C2908
	for <ddprobe@lists.linux.dev>; Sat, 28 Jan 2023 07:43:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE009C433D2
	for <ddprobe@lists.linux.dev>; Sat, 28 Jan 2023 07:43:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674891785;
	bh=KZgsB+mMKskWhndt8jUVplzbirPDt+7tJ475VPJAOWI=;
	h=To:Subject:From:Date:From;
	b=E2p6BqKwvvUTP8lC30svvb+weVSTfSDXVnnFpnrks/0nYdOtM/4Aq/TMG0poQLqyN
	 RXlXzUrUy8wErPiSIlUWt/yldHtz+LC0Tfi/IoMYhGq5rw0gVmXYsgJLYNGjyJOa05
	 +ER8gQ5qzKs7fwDMs3CicEZ36peJj6qvEWO5DhgFv32qk7hvQMXK2pmOfIsvHqEh9R
	 uo6EBlWSbrGg6Abt14DiVdXMGlFMbPeHNKoV3Lm7QhHT4WeIdyWj8PHD1EnQS9ATbT
	 i561Kpw18kLAcCeRK3oncAa1WjPBMOmCJV7M8OHJ1P33Vl59J4IizkoCAzQ4VQbsCn
	 FBJcvQAY1IJ5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC5CDC38142
	for <ddprobe@lists.linux.dev>; Sat, 28 Jan 2023 07:43:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167489178575.4707.6462041372950668026.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce38f7886401a0bc7e3fc73e2ca3443bc5f0111aa62ae4b83daf142914819271
Date: Sat, 28 Jan 2023 07:43:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674891785
