Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB1E236D51F
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 05:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764392573; cv=none; b=TasXj2yvk3Knq+3LU+lexweS8qv19uthzpcinmOkZaKmm6L2WYVoY2RCP8AA8GKbqz5P2x8aFQs6Lf38atS7GI4p8ZS0hj+54flvwTGz1L8nBV/wSB6YpVlOS/lswMWLX66G6zT7dkOrimCjzvJfrG1d1f69GV0chxxV/xyxDho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764392573; c=relaxed/simple;
	bh=Dzw4D4+7cWzNzJxQR/uZ0WYA5ORKX9NoGbae2EyhIxw=;
	h=To:Subject:From:Message-Id:Date; b=BNTxzdaLE9155uAjxLm7uCiKsC8GRc5H4Fe77Q++70BwBbHnek8Z20olGsDmV1+nFGSc/2Wny0Gg7Q1x6uZnQRA87x5OgdKmguYSThYSviXxxmVoT2bK14DoJlaNBWgcNCwG7Ax/kp9v2ISGsefE/RtpgJaOWjYc/Jo6pFvGjvQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mYqgw3T6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mYqgw3T6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B05F7C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 05:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764392573;
	bh=Dzw4D4+7cWzNzJxQR/uZ0WYA5ORKX9NoGbae2EyhIxw=;
	h=To:Subject:From:Date:From;
	b=mYqgw3T6lOTV24VLyFto7erSa58NeLPB3d8nTpqTgQ6cIAZ2ica8GzusQRx8fSE29
	 p/vPqTjWII5Sa49YWsIQULupEyNuZMjbND8L3+zZmTFCN86ZUe+1INX0CCjUJ7CSmG
	 27KPXmUjMTEvbKzrXyYttjmiZqSTDq1jLpnQTtYgUBd+n9uCxFjV1OoHU+iUeNQt7p
	 OCodVShnSuAuvkMwrRBvIdmB5apzPAlGxYvHwDEFbBTeSeXssXUv9aSyquU+v7tyPd
	 HrIXEqCO0oMDIBb8ZhxjIsafJ2nuoQFoSmEwKUvlWvNcTRH9mLoy1q4uXEVXDSrFdP
	 SUwsLpIQAkPFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 953A3D116EA
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 05:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176439257359.24678.5170399718760263427.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c8ccb1b64670d8904b5ffc62f960e5ea631b5db6e9409711c59b7682771dc31
Date: Sat, 29 Nov 2025 05:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764392573
