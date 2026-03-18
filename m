Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0755F21B192
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 15:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773846894; cv=none; b=H1WdxppD68cMKjqcOjJcZS8EhO58/h7bNgo7mMG4Hp6tWh/JAEC/NO/MRdP23mKroTOic4Bo54iK1X7UwGqtssFfVw9whllGdVm4HUxe3SVXiwfiK9QqeP02zcov3NnbOwt0YV+Hz9BaLt3XaGI56ShUvjclUZtHwjyoZ0KyLuY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773846894; c=relaxed/simple;
	bh=bv/36jYL/gH7prJc8M3Ug8Xy8STW4hYyc0GvR0BaYMY=;
	h=To:Subject:From:Message-Id:Date; b=R93Rh4IEsyfO1AU078jew3L6cdYY/AUTuta24oQnhGS1HllqSfPshwWdOiRUm5PcL2YT0GdZzb6slWgT6DtXvjOshcTuHxQPKApuYvgxHRXseYjc7ltZBfASDu16lhn6PKj7kLeHIhF+LEahmeePagSDOpLNkyFrd4RutcSQoTY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R9lCCBHz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R9lCCBHz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FE47C19421
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 15:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773846893;
	bh=bv/36jYL/gH7prJc8M3Ug8Xy8STW4hYyc0GvR0BaYMY=;
	h=To:Subject:From:Date:From;
	b=R9lCCBHzpz5nLw8+9pjdx/KnLYmjlzMAwAY1QOc6Y/4PcZH6uicsfmrtsSsq9m2f/
	 17mDiExRItpjpZm95dqg0ZjRW99Gx8HcR9fbFQjJmJhnkrPzlrV0Nyd2vVFwbCAAbU
	 32kfBvyn+/SNRo/nTc6SSvNCcon2Fxycv+qQ7at9CUTdx3SaEuGgAOGVa4Dex59Sq4
	 UX2msqnY0qHPEG6OELkDPxUb4uyKStXZTRGHIwHkfYmUj2lBZBnwSJFCj59g5UHejT
	 YrfQi/k2SUBRsdjFDX+llcHLlFkoomzW6NyfuYbM6kehbI61/1Ww0/NqjpAl4/KRfM
	 fOW76fRoE/55g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FAFB103E195
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 15:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177384689358.17061.8287010184549670076.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a128e9dfb6a2cdead8f9f714c2490866dfb077d287b2100d0a58c3ba53ec062
Date: Wed, 18 Mar 2026 15:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773846893
