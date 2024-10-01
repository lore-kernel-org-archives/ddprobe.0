Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1303D36C
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 00:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727743554; cv=none; b=QOGO3xhoQ2IgxWfIz3DqQRTgIV5qKAGj+a+iMclVeMzrMu7Ys2FsH3FrnNeOeQ01cAf/67dyHIUAk6832ITS7Pn8RZXlRpXRSwGfGkXhqC+35MSfavfVdsEDXqxseUp08AV5rWNLUgugQZOz6X4mTgtM6142F7xFPyh+Dv2CpFs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727743554; c=relaxed/simple;
	bh=eQfOZSZKAP3QchPazyA6L7Tf1NKgAcOEf0ItU/ENccM=;
	h=To:Subject:From:Message-Id:Date; b=mDfcARu6SVF4L9lcQM35w2AaR7cc+sygtfZTIcUETxAXDqM1PWq5PE/jNtxBlEd/6WdtKIN4Fg6knUa2MiCBImCituoKiiYZcIU2yoNltuyN1PAxQoWfIoluWw6QSbyfEVPLIG3+cTT6IU2Xrugewvh0NG8AK4qA283nZT7ZenY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gt7xD/1K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gt7xD/1K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9BAFC4CEC7
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 00:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727743553;
	bh=eQfOZSZKAP3QchPazyA6L7Tf1NKgAcOEf0ItU/ENccM=;
	h=To:Subject:From:Date:From;
	b=gt7xD/1Kr4fcTfVeUJ4VmA8/TLbEkvYjd+wx1G/nUvuh+8fSZ8hGBUatPOv6vLHFL
	 8uTmyCmKF3Ox4RSfUdhsmYTnx4lpkoGIO2ZE/5QF/7aUB3YRDr9bOOns1K7NVRQoZZ
	 TFVSp5UaHRumT+8WRiVkntb33Hou4nb78hE+ij3B4WBkAOkauPP9rJE/zBx7ooLomj
	 bKJoXWWZgFxPfA1RfEYS4H1qeKIflX0FHwRhVLzlKPHSRjJdVb6wFsDjFyRI8oUQGq
	 0gCAyV67v410drAoBbF6gq5brp8rfoJwE/Zl2GNQwwgy0i0nbANIBuuayMbzeGxYAm
	 H2QAYc9okmOig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93309CEB2CD
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 00:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172774355359.14296.6237454777436243318.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13a21879c37c5b4ebbcdc243b73def3b59ddf8d9a64e936d50c956a9c884dfb9
Date: Tue, 01 Oct 2024 00:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727743553
