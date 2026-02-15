Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 238BB21CC71
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 18:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771178694; cv=none; b=XOQvkO+3Axs693+f2smyFxOcV5XJUXijbMYoeIJMX8cSuvyHR1TdMpy56/exNSOBGTZZKlxxAR3bsM+cQhabmNGBbKWT79Qc3U3u2S9KPAnmLsoLMfP/DHutt2M6smoVasFQnEjfTeBWXU/S9RYDCfvxSclcgd3UsbpYw2XW8Z4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771178694; c=relaxed/simple;
	bh=rGVjDaE6pwhuBhd0PitQcY+z40ZZ+MmEdu76irmokic=;
	h=To:Subject:From:Message-Id:Date; b=s8925k+iK7wXrygIpcraXOiqPbmEmN2ABb9DVMfj/lE/kWx4DoxDvkgYQ8zj1eUWHKE74tLSqcg1bHpoK1bPB1L7nd+jggWGBaGzan453KnwMxo4BeVvhQDNeFJc9tjfY7L4A2hjEyCglEZ+q8FBVYRrq+CEhEd8dbNIOcZ3Ucc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Aw8rAw6k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Aw8rAw6k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2D9FC4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 18:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771178693;
	bh=rGVjDaE6pwhuBhd0PitQcY+z40ZZ+MmEdu76irmokic=;
	h=To:Subject:From:Date:From;
	b=Aw8rAw6kQIF5hOEHKMqfCysUD6ddLdv5jSAR3YzkS5lVQEQJ+5BI/PC/yRWeA3t0R
	 BeIyKyf0xfqITamw6zmS6QB9r/NyrHInePOHOG2G7ryUwcX2RZPJAK5AeUcZ09LDkI
	 aGJdDZtppn8tVLv1a6U4C0/DFpU6WfW3LDydB/3S32mS3nkV/+0sMC+xNP1pRnDr9k
	 MYvcpNKh/I83/04tXLLKi0utfMC3hE7xG3jSTV0RkfySIPPh/p9IJbaRdT1HACi4wa
	 W+cvziYChVpFpsuTvqM6h42XtGimtT5est4A3rzICU16x8YUIdA/WB+tfwQI25P5Lp
	 l7MAryZbyX+UA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0B9FE63F08
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 18:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177117869364.21345.947793461152783510.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c051fbf077852899b0707843217a72607608be1607b6f882d8036feb0664236a
Date: Sun, 15 Feb 2026 18:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771178693
