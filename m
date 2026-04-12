Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AA4026E6E1
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 13:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776000454; cv=none; b=gIDpmgYYWu/Qxe1tr6MFyV5guT1FuUWfxlBmKkKQx8slhoXR2/wD9fJExjJUiecIjfhxpQWZopx90HTQ2Gk2gHaLxLdI54BRVjxoyj8RzSWpDGW/2foPSCF59n/Uhuzvym94LHCr8HhLkBv1p4FvUMnKUlbo9OMJ/wHSEZ6J8g4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776000454; c=relaxed/simple;
	bh=TSPkDRBLGg6YsRKTHCb55MdZ3DIqjJXGbLQKvCYQYcg=;
	h=To:Subject:From:Message-Id:Date; b=YAmmeUGHxXRcUutxT0Ca6lxqj+8RW0YBGKtFeCxhcxl+FSK49nQjZcmUFFhjKUdMkdMU1L5TP+lEJqNdbQgL0Ge4xsyuc1SCdrykd5YAcwu2/dfdA/+Xf6i2yEHaNGvfwdZaNr2MH6SL5P0UxA6f4QSqAx2RjM6gKTWXhOQtUB4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=usFD4flH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="usFD4flH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFD44C19424
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 13:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776000453;
	bh=TSPkDRBLGg6YsRKTHCb55MdZ3DIqjJXGbLQKvCYQYcg=;
	h=To:Subject:From:Date:From;
	b=usFD4flHE22DqLd+LB91QSnvbeARL9M5tu/n/qNmcofh01ajF2czAI+wW8Vbp0pSx
	 Y80HvVgEuVnIYx+nGpFcjHFDlAFQevwFou02gtHTjBSesARAtY+nu/r81HZZkIb1ge
	 qufdKMdUxatKGZYZHA86ExYhbggYQOKOYihMGbQIGUVd6jwTcRFNtOlDCQCDBbqW82
	 GLjEEFRL7g3Frrs1f2y9mq2/szSTzhyxKi/pM5mMz0dszDyHGSfl1gTT2Mwef0YOz3
	 Ahz/CMtd6uFFypQ+IYx/VGQeSx8X7xx8PK620IypUw9sc8AO4SL6l1Ce3xS+UIAp2V
	 VeXvfeqXU/ZuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABBB6E937E1
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 13:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177600045368.3539.7095346258298406978.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12fdc8b2038aa935ebdecc89ee18822138a3bde956db83987ffd81bc463a036c
Date: Sun, 12 Apr 2026 13:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776000453
