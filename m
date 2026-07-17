Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39FCC3C109B
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 07:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784272114; cv=none; b=ENzl/0R2v8VuLkX9b1fKxL72KALzGla8HkWqPSpsCK8cxGB7pLu1gGbFLbpd7BtNdyNL/Lng0L/zKtUhpQ9PqTOragLkpViBN8Psv/RY3Xpfp9X8UDGFrYrnU1tjyqVkYWI5Pqj+XFjx8kGtxjwNcQd+r8Zw5aKdZrF3ZFomS7Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784272114; c=relaxed/simple;
	bh=4CueIfIRQVNr3VB06EunpOGDNAzJ+M9AEcTMbT0J2rI=;
	h=To:Subject:From:Message-Id:Date; b=nfS8CvR+zrzK0MxJYeOxXLw71iUmAeHz19LCCrjnqQYErxFijw/YisIhx+I3KSdVhAX/vU388O+jIinipgJ4xn8rT06nV/3ckJ74AD4CJ/A0hv5Zsz+kGbya1lNgcwKsZ18SSHkNnLbSVYof6dl6eyZa+fq8UBkmEGRDVsmzkoc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V0/mol5f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V0/mol5f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9C99C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 07:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784272113;
	bh=4CueIfIRQVNr3VB06EunpOGDNAzJ+M9AEcTMbT0J2rI=;
	h=To:Subject:From:Date:From;
	b=V0/mol5fQN5Ql5AjiNroQ3xKT5c4SRc20wUp/Bcg+0i9UFWtsqjzAzuc3jLuQDgkQ
	 alRIXWyAo32rjtegZhj+Pe31S22YsF9NUSBjxOBFpSSFuLIDhpj/sbViHsQfkEkggn
	 UTD4WSzX/RKdc5GUpxSBLX549BZhd7kndUroFKsWOTp5WWgypBrWnEv+VAaF2tXTKm
	 9hNjYzQ+qWFuLQ9nA5r69YBrTh9556d0uup0tE33wAy8An/zZY3VAS0uhlPoBBtLpP
	 eloXZ5kJHFhV97fsVYxoj0XI/XAyf+v3r4Z51OXG/ZE5yoeETKH45CY+d+Bk2DiYil
	 0d6kevj2gBj5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8269C44507
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 07:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178427211368.2666.9805145165813590488.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae6a9dd475bacc40ae7034189556fdfe770d7f0271bc89e1a9566db8797b7351
Date: Fri, 17 Jul 2026 07:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784272113
