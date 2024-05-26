Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E94CE573
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 18:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716749063; cv=none; b=DJz/yVg4Zkq4UEcWY2+Dt8OcoSS2SJQ1WtON0I3/YW7Jkg2MpctjfQETyd13URhqtCbA3g9xmVmz/FYyOVf0N1llV1fJP2GR2BizDn4PBr6obw51oWnI5e3MIuLZOptEqRXXS8t+CzjT0eiem2OjvjFruDLCRtn1wNxlZcbL9+w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716749063; c=relaxed/simple;
	bh=MQbnIU9H3EF3VhRjgwgyz3Xq61yXXtjC5Mxo7cmIhII=;
	h=To:Subject:From:Message-Id:Date; b=qzbq0fOHy5GNm89nDCWp6ECzRAkr1o38JyA4Z11MaGqHzkYUkCqLt78Bt1tYvGvukhDbFDJd3sAwQQDBnA1eJyvRkm10MG8DbOfVLJ0TutzEilf1ezU0LR8xj02TO8/lxR/N9RXEHb+RG/Fn39BY5646IJNR549c5z1hyL+wJQA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l53V5ne6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l53V5ne6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3F52C2BD10
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 18:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716749062;
	bh=MQbnIU9H3EF3VhRjgwgyz3Xq61yXXtjC5Mxo7cmIhII=;
	h=To:Subject:From:Date:From;
	b=l53V5ne6is9z2+IdgZoXZpLn6t3pu6xhdH5oSKqzFAz4OQQrIswT8JzGthJ4C+scJ
	 vYqUm3KrYKaBBL1FiS0VglfHUYfe97TQ55hGc1U6DU2tASIbb6Ib5wkMfM6Q4LUzJp
	 GWqQB7NAh/MHnq0Kv58XwtQJtxOpbj6BDrT53fGOkuZ2tdO1WWvcNw/CZ7DT2gZ9oS
	 U/DZlDrULSme8uhSz0gvVyyldvxmvH7TW5yr27ZKTMTS+ywW2XW9TibwcovxoEThyO
	 VR/QVUndvbXSuLOBIOUeOH31xv0zvlpl0smgJN/mR9Ah0+lMPnvsqo+Y1ebYCBMezJ
	 rCm52n0yEphUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CDAE1C25B75
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 18:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171674906280.6715.1888002045524637376.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1895e7923ff1fc2de77535ff21343e6af6e43807588e270547086e19813a735
Date: Sun, 26 May 2024 18:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716749062
