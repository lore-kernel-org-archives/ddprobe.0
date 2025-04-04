Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 364D81C861B
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743764394; cv=none; b=CEsvgl6Oew8lctTlo2TzTFx2IbxIirGhFxU1Qesl4fSrv4Py0COxqAOjMPKYAPspIMgHc0ZcK1O0Rkp33SxuQ4pFhp7GrDMjBwIVNt6kpUa9TzlSW/nv25yIEr+eDDmLdvSukcszN1ZJlwvPOyXOE/LKwaE1ASi5vTFPz9IvwL4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743764394; c=relaxed/simple;
	bh=YDwJhu0xGWSRncFi3N6xqSGf308CrygLDhG2psa0T3k=;
	h=To:Subject:From:Message-Id:Date; b=P37xlquFc5ZU2snC/vhZYlquzz3ppxbdUlAjrAO3Fds3EWiXEGAEO/BV20w9INADw7c95xDWj81mHEhhsWsluvDEp61AT5kdN1O018ngqxcr3YOx2YFm44jxCKqV+Srufp/V2Q8Oz1MpddOKOwP1+FVNMZubptSt59BcXIM0bkg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o5zx3EOI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o5zx3EOI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABEADC4CEDD
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743764393;
	bh=YDwJhu0xGWSRncFi3N6xqSGf308CrygLDhG2psa0T3k=;
	h=To:Subject:From:Date:From;
	b=o5zx3EOI2L0gstdmWBEHhVbXJjSLMjDxcgdAKUk2O+PJruvl012eqt2DTgzmGqGWX
	 pOxiEiJva6qLRqXAwR4BDBNM1dcEU9B36aEBDtLbOhDdMHaX+x4yxX2mlMu5wVU7PU
	 1R6Ff7gjkshj71nKpPhWNd7oMp9TckEQlDILNcpDhrXJTOdpdVVtiVmBXNYKAriw0J
	 bkFvxYh1Osi5fGMBslyscCrhMocn60vNegGo3pXSfxNKKt9EDKOTmZ5ibz+6NT0e9J
	 e3dFoi7ollOEYuTMcXECarCjrDBjaXuzjLGrNmc5ZHnEL0eHzFrJeYssUMNWyJu9EV
	 KfoMwz5hSvG3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B5A3C36010
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174376439360.30759.17661742022515151887.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a167905474826bec1283ba081d7c21d5cf0528321b06fb0993c45e4267539f37
Date: Fri, 04 Apr 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743764393
