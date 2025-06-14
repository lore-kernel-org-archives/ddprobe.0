Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 292203C17
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749919794; cv=none; b=N61gKtaLx5CJ24jIipbEw/yfJtc5cOJjm4ARSKp5VrDP/kCShL9esaT7rjYAaftTejP3NvMiPUTsNgYFTJAFFjTa5hJfveEQ8jIQlmw8Rbspg5YGlO4LUz1E0RUoesYH248Opztu4S9Ts+XxPdJSPw0DfLKmsDMCGZBt2aQ8Q3o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749919794; c=relaxed/simple;
	bh=jMYOPPDe7EvTeBI8zxv/5si5O/LSRy91izMw+KXsAVU=;
	h=To:Subject:From:Message-Id:Date; b=KlISSBKVJalXwICZvA5eX1plkQOOdhFxUS3Dx5uiake7M7nGg3EHOk/BY4yEt4cJosEyeEJ2oi9xs2Lk8CAxf/GoQqPTkmo4vyNKtKA5H3kedqtzN8jPyj0WDe/pfwVD190WvKE86ZSFthbjJzAQ1beYk3ZgiERMSj8AJzOL6zc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PBhVaVo6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PBhVaVo6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9E3CC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749919793;
	bh=jMYOPPDe7EvTeBI8zxv/5si5O/LSRy91izMw+KXsAVU=;
	h=To:Subject:From:Date:From;
	b=PBhVaVo69992hkyzDTE3SzR5VIL7kdWY7WCroF7QAHEYhShrqpJJqfq0WNslY9yf3
	 c9SmoZEadmuwo1vVnZ45Wh73U7EhjDvjV3G3iGzW/IK2iDMpTerNgMMn5scCdPKyXP
	 vzFIB/W7CeZDKlqndTkSe7n4coqgFzOiQSAWp4uFmLSn0PHHUXqTG8zCLcijXSjChJ
	 huYx57FGty8xsjbedT7nbRjS85Xv3a9ZZwA3zxOvhaWUar+jLEk8ee9PeATRSzcFRs
	 vkB40FCqKSGzkTU9ROejj6ZqrGgEFhNBDKvGHJyMO/EqpoX1suIPKPMtZlkubYpg/u
	 eVhqnobk90x7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96A42C71135
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174991979358.26895.8763366247719958839.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1717d75329a079a4758d99411e657e8de960b7968c3671b3d7ae3389c8b51da4
Date: Sat, 14 Jun 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749919793
