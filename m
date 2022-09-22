Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB7528445
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 10:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D29BC433C1
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 10:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663842653;
	bh=YyPp4DFbS5u8vetRLj0ymWWkge7//FNs9OM9UmyS95o=;
	h=To:Subject:From:Date:From;
	b=jbXJ9JHv1crYyMeSZTXnnybB0e9iPgwy18ttY16CzlPQiZgX+bl8dTiYSpDi9hDmP
	 Y+q75cVaHIVHgb6ngJ5oBLHx9SEYzRMHerqb9rD8Y6fIDsWty/Hh7TRc3HDVk9jt91
	 L4md9iT/iVRP5z8OW9VOsydW5jnIO5O920qgJL49V0TZwChxlfTjBDKMrpuqzDSJey
	 LbXgbWhS75sE24i+Ns6LN7CgO2uKOhpi/RGi5EVKWvwSb9I4YAlg/OEMyFMraHLZbO
	 vLEmrCfi50MFkyhF5fwD1vv+xvbNyM54KkC12KT5o4RnUI0YjEs/gADpIXV8D65EeY
	 G7AVzfxilOmKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56E2DC6FA86
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 10:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166384265334.30467.15149710254337631480.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc84685d78188965f1fefd74e5e7aac4a793f33ecb07e5fd7d4da2e802b6e7a4
Date: Thu, 22 Sep 2022 10:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663842653
