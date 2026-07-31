Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F4E82EEE6E
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 02:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785464434; cv=none; b=lFAWeMPlArfkmHBio2MgBX2i6n4G3WbozM3H6TfBKSBQZ0lLhe8aKPizHKbdWjN6FaeYkhcCRJF7MLE6TMP/tKvR1v7yewpN1/UaUTEjM3aIjGym2TjaV46Vd43rZSk1hm1eA07DCl4/oeEAAvvL3YlIx8xaRlzNy+s7Qb70XJg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785464434; c=relaxed/simple;
	bh=yhlJZzMioPK3/mj9085Fev1z5B44uB4tVNomLONgbJg=;
	h=To:Subject:From:Message-Id:Date; b=paRGqVzk1wT1rxjVHjsBObg0aReKZbDas2RKWe5xT+kvpejHFDDG6NnloEswQlDPxOab8kJK13Tjh6vcmf3+Hp3rJMQZcPokpzYAJAwnRQcEq6jT8zBCO4h1vuZzjv7vhywThv+FsIK6Iuf1ZGpwI9mgxPvQaA3vIxeUFExik0M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=muUV3rbK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="muUV3rbK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCC39C19425
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 02:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785464433;
	bh=yhlJZzMioPK3/mj9085Fev1z5B44uB4tVNomLONgbJg=;
	h=To:Subject:From:Date:From;
	b=muUV3rbKgoV5EpXIADikrhT58U8pZLSq/cgE/aQgLRxI+PGjLQrVPqwDvmgouPxpO
	 pnmO44aKFLN5t962AXZX9b7neb/VXePG4fHZYkuM9TS5B9iuLgteV7XE5dYr8D5zq2
	 DSqlv0x2ds7i5KauVGQCE5woPv0JCUnbesfsqYGzkP5q0Hufi5gEKJpTUAZ0WT0npk
	 IHL4tnzeIGcwwOnqpUe/hzWsKoiBXJv5xs+i513RWh+nook2yU4fLFBL3exk2oLzEQ
	 Jx0RYdPskoozWtMSJ6kXUne+Ld+q+NkbAwW+Gx806YGSpCdlg+efuMKrmPaoEAYj+A
	 WH71nKFASRj1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A98BCC55162
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 02:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178546443368.16752.4281463313161097135.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 265dcb9eae35725e61575a1400252ad103287554a901f0da458d953257e7e397
Date: Fri, 31 Jul 2026 02:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785464433
