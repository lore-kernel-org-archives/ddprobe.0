Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C33A3E3D85
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 16:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782492514; cv=none; b=kMyUVW1isjHm6xhXZ0kW12uAcd29HgirA2ekKu3TLtizDKtjGSQmny4UdRPidbFTh30rKaN+Jn+x1PVG2T4fEHt4lY0LfqSWcJXKjFDBo94W4chaNusb/L9eT+0Q9Ml79Jq6Y/qLkomO2zhRAd3Uo0P3I15K2YiP+9eBiVDU8JU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782492514; c=relaxed/simple;
	bh=tfkhtXQ2Gndz34jSgf1+TZBv4AQnX1+Fvq71OsL2BME=;
	h=To:Subject:From:Message-Id:Date; b=uTFHKcxwOoAuhWAyCWZjeO51fuHtnBsntH44SAfgtGlk8wwXavDcFPIA2oa+V/RvsAP/Qif3SG7iAyUo5SjzD6T8UpDG3L9L5sXKF1jEl5mgO/HPrSgDxgwtiwjmylCHgs/Vj/nIhl07ViZxoRkE5TC3Iu5Qh9EPFSh7q1iQPCk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qZYGoscB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qZYGoscB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E47F2C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 16:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782492513;
	bh=tfkhtXQ2Gndz34jSgf1+TZBv4AQnX1+Fvq71OsL2BME=;
	h=To:Subject:From:Date:From;
	b=qZYGoscBq8nCaJy3fYa5ILF2ReMnS+umRnIuy5OaoIN9h0nKta41z5LfGaOJLJQUJ
	 RsSof7thNBPriggOGrLRWhVn3MBOhc/r6A6hq2WBxB4osvQ05O8B/YQeQM5QBaNxhl
	 Xn6lb8kYCeqd7IU4h9hAzXq9b4nV/ovHPk/qZ8rTlHdXe7uVIWZgYc33YUP/PsNe3q
	 50txOZdquEnVL4KRbSI4cM7LfcjFJPyI/w+6mfgiLEF0gSn86+ml2HCC30Y2EW3MVj
	 05OUsGsbZxSVpa+jWdqIV2xZ6oGtAG7RYexdYCJpXtZHgbRNzGLuQh/xW4MhKA1F++
	 Fkd8ejsfNE2AA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B47F5C43327
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 16:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178249251372.913.18065240465884177585.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62b7b521ee628a74906c652475ac29349f7178ca52089c7c93b0a0545aedb835
Date: Fri, 26 Jun 2026 16:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782492513
