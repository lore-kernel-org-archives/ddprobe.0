Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D8C31C4A20
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 06:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771308894; cv=none; b=jY/gbHYdJ0v0pTlB4FCwVVg30jx9fJAFkTHBrRMkz/8Yv3KhlZj3SnLNSMiqfPmNLOuGr7bKdfGVtFads4cG9IIU5oDDrF8+AhUCrU/wesE9nh+3DbpbdTfflhTdg+iUvIaG46Fo9Tdg2ViuyWdyxz0xk5XKSNVXVxbwrHMucp0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771308894; c=relaxed/simple;
	bh=9VVL2akFH/GoWObhNJIYZ47+l7DC/ZDjIykPUZgWBL4=;
	h=To:Subject:From:Message-Id:Date; b=jXVRih0SovfCV/eKW3X35Qv0U6VsFvcaMeddcXV/8rw1BKmE5GH5Ww2fvaZoSwq4RZzrkeeMmpRXSq1iH1kwjbT3+pstt54arlYUrgDdRK7EkVOs7YaKmh7ClmfpX+XvtlZKBswyBPzTCkG06Dyn3o1cKXxCKTT6tJq7vBpDzYo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C9qB8sjs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C9qB8sjs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3D6AC4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 06:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771308893;
	bh=9VVL2akFH/GoWObhNJIYZ47+l7DC/ZDjIykPUZgWBL4=;
	h=To:Subject:From:Date:From;
	b=C9qB8sjs17mH0HaikXt8+opVwatCK95Rc8ULCJScn6h/g83SsJTrdztKG4g7atmim
	 7aCuKzbqsVvIyAJB5Qveurr/v+pGg/LQAZgknKScgfYIHWBeZMLSSf3ImXTgTP9d9N
	 kbG3tkUIlT3chHis3nZgrVEtFCRSNH290WqB18w+NC+EtP1eLzdxw5FI7Y6qEG854N
	 AyxRk0uN/o3D2o9+6Jw/7Oea1F+Ou6B9xGMxOggNAkelZBr4w5NY0jVQww7YkChQQW
	 DnMpvFi5McwVBdjghNu0mmUc4cOATFNMNfKVwGzY/iK8eF1B+FuxKwqQacK1lawDk3
	 7VvQ1lgyFkXug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0977E83855
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 06:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177130889361.4034.13988429712931493879.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8f71ab5bc3a4094f0c65e1524802afd705211391189561db844451644a494f3
Date: Tue, 17 Feb 2026 06:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771308893
