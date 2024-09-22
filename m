Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45A3244366
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 02:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726973754; cv=none; b=Wb0N4ZX4h4RC7dERb/0cibvxZhqjd12gLh7UDD7ANtrqb0qeQBPyxIaJakBVURzujwQLQ1THiX2f8B4/vPwlcSWaelnwhtMTsbXISTg9SCWH+YRt9StGoP+3T/SMC346ptIijhYY2m9qEvbPB7aj1CUYQq/V7zTxF/uf2S5ELSI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726973754; c=relaxed/simple;
	bh=sNY0ZvcvBgWiXP5x9CKcqwZUQOJt5Z4ipjdz/NUmzlI=;
	h=To:Subject:From:Message-Id:Date; b=uFxk8y80RtmVd1CqnwXH0P4mN2j+6w2ejNUkxZK4udAoPzPOdVppyiuSBt9ZogYToj9M0zD81vc+B1Z4sjfXPVI2Zt/s/rb+fc9+nqaEDsL22RIekGrUl6iWsgLK3sPzEL5MDP6Tn+ZYnIUD+OXyI2M7T+bCxd3T61AJDJ/HbIM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Glp+moRE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Glp+moRE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA644C4CEC2
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 02:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726973753;
	bh=sNY0ZvcvBgWiXP5x9CKcqwZUQOJt5Z4ipjdz/NUmzlI=;
	h=To:Subject:From:Date:From;
	b=Glp+moREeEg/QNmoBuULk/qCOaMD0vCJDWASJw5aTJDIoplGykogg+Kv8ljXrp7xZ
	 tNbgxohVUAYC9X6VtL6iiRU6rf4lstQvpArGyNGIy68GomPLQD+pA4PCvfOuAMTneV
	 Ja3h87S3HxmY50MhOIuXnINB4SoqRC0V51ZBhJdI/y5rxb+qECLCHV1nd/M7oOY4fC
	 rjd+RSHesbKqD2ehP+alM+xdNG8T1M1sNYw4uiIfwM/SBUawjBWisuPzAuAwMvtLw6
	 cvz1KWH/62AqVUX2+8VU7PvcUPAS5SwM1rj8JG45CxGPFiZh1/fu4GdKQSdQLjQa4M
	 Qeo9x4/jBSm/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95092CF9C6B
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 02:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172697375359.13756.14923330669354075016.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9cae884c62b24423f547f64fe14788973bd960b858d9b859a2f93e114c8bb93
Date: Sun, 22 Sep 2024 02:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726973753
