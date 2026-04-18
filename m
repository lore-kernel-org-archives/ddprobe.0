Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AEE1276050
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 18:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776537454; cv=none; b=bYGEf+rKGy6ilo5d20cR/u0vKKV37dQhnqjDsicz+Tsw+4doKGeT5rBRoD3VYcFudT9kgiTYPlQc1Tyqt9UT/A4T8Ty2KGTY5aD8NO4I/RAQ7uZeaizUcheRf2bTxnzEpgcko8Rz3rf+pZA688w6EQlPleHnK0J4FMTmm0+TDfs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776537454; c=relaxed/simple;
	bh=EBOJuJOaQxIsorJVJ/mTyEIpM4ekNbXJAgwTHYXbUlg=;
	h=To:Subject:From:Message-Id:Date; b=EoqT3P0xZkr9VR9QEHqZ8Q4wmpi/FBEBkBXM3fY8xcJ2EEQHBKNj+DEVnLqsw9a0ADkLlYjHpDFE0YE0jr2hJcqT7m7JBvYggGz8QTRWdtfInU9FRJQEospEX48giwUiLGxhRcEwmFw9NjWbQBD+W9/txc9ilzWrCcnAdstrnFQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TFX+cQXp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TFX+cQXp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C77F5C19424
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 18:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776537453;
	bh=EBOJuJOaQxIsorJVJ/mTyEIpM4ekNbXJAgwTHYXbUlg=;
	h=To:Subject:From:Date:From;
	b=TFX+cQXp5GlAzU/4KZQdVhcus+PjKEIdUmZQ5cBR9wkw224lylG+pYH1pDs38+5B3
	 /vaPJHQhFooTMJPNUlqZ0HA9yQKD6nePLzq9YMQc/Y0Ak9uXitcsV6TmUNmSfFiGvs
	 crtbULo++LHeGa1WqK0DM/DaNSoOnobhH20XkLtWXzlXq4xTwZFSuZa2JWUbr27YhT
	 9ofNdUryudFUIsVQ51E2539M7AYGcjqraAr5KWIGeHjN0iNgDoGendqyaqVMnc8HDU
	 A78q3WHSJiRB3ZkYKj4YxLPaXijvSxtfMPuJB0gVHpBT2TV11inuGkqI7kjTogqHpm
	 apkC6jFCu8Kqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B496AF99C90
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 18:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177653745371.17575.1676913243340842238.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 201896875f9d43c1eec8d9892e04b2dc3ce873f5d415c1399b1e98ec94e8c984
Date: Sat, 18 Apr 2026 18:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776537453
