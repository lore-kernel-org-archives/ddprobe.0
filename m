Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CC8B1B0F19
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746362394; cv=none; b=eXHp6GXuJcWOrBHOQzDE5Dmdsd/8yCS5ofaqfqibi+bTMP2bEQx6xcVrw6XTIPDZ1k0dM1mmN6Ei5jtOtg8tP5HYho0rl5jpTnRO1eUQqcSkPdCFZXVDKVu/yii5QMddOlwu8xqSRuvHuwdLCIw15Mh/aiiwCh9LtM1gmSPQjrw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746362394; c=relaxed/simple;
	bh=8dncEcqxmrAM5rdizBbsEKO1tnb9g3RFIwNjZVpMl9s=;
	h=To:Subject:From:Message-Id:Date; b=UhTnfb1UGkfag09rsRdbsfLkwRBzK+u1jYRXGdyoTytLqlTgSHzA7EqnGAmB+/m5hpo2rsYEatd5yIuJu8tcipK2qFJDzgrpUIv/K6d2Cuq09VxKptetEVVcV6gJUiRt0sHzwWJ5rq7YDtBkB+wc85ai4ghGyg+NdhINikEc4pk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YFBhPszI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YFBhPszI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1338C4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746362393;
	bh=8dncEcqxmrAM5rdizBbsEKO1tnb9g3RFIwNjZVpMl9s=;
	h=To:Subject:From:Date:From;
	b=YFBhPszITVmNKpQrp1EV05qBzix7A190hlF4HECSEE8BJ/o95ArKRk1zxGNSSZnVW
	 DvxGsPcQAH5pZB+yyQ3G1zbFaYe4C0Z7c0MZSr39IPer8r4lOvYb3mSpNpPdo5SEpw
	 Vx9ehd7xxuJ1ll0dGLUD5Vlx0FrzyyY8Ut/1QboZoMumAYJT/ZYLnizgKaMnq7KD0F
	 SNBKzJ/iDfO5tbjmZCIFiD+x3XB0KgpTF1kpFxKUAcAiBtndlt6SOTYYceUl+c6xC1
	 +JK1AIFWTOkiWis6cWkgSZvrGzUGXcadjo2JeyqH50aTwXTn+aKiJC56LAMVWs5Zzf
	 xUeGQ/7vUaYGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B82C3ABAC
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174636239357.12840.5648278494575119511.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bfb1f558926ebb35a520db47f359bfb153c9fc6094d2f1d8d3f83fc9e84f2e37
Date: Sun, 04 May 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746362393
