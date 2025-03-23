Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6284217E0
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742699994; cv=none; b=kC9AgPPjF+aYxfcKqd6aG224AzmJP/RdhJ5HmW8SOMBMTIfZwv9QpRy/xnp5tC2dPEQyDlqByjjjPNFfMRfz5UkU6zrv88CtytK9gCPH/CnFaBAtDPzLA1H9GizEL/yQq0IJxU3cOZqxAYtP87mOcfRCDqxXf1cvpt5lcj22dPw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742699994; c=relaxed/simple;
	bh=+uX+YW/iibylQfsR+TQwHTus7K27wKSK57lPuhRHSgo=;
	h=To:Subject:From:Message-Id:Date; b=a0InrfupKz3exTOxpVgcVqM0OsaUAev5IOuLsH0xRyXazlAvv4fsUqZGY8ZG4IjhUxaczHPo+0DlLHWgsxQJey6qbOmvV565nE0UO9Z1023NLRWiFm3FtRJGLReWOiHbZcVW1X6HUmbjG61tqnwUUaOjUb580dkqZsJgU42FyYE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FYksEO3z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FYksEO3z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1A05C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742699993;
	bh=+uX+YW/iibylQfsR+TQwHTus7K27wKSK57lPuhRHSgo=;
	h=To:Subject:From:Date:From;
	b=FYksEO3zt80rk1XbK+xByQYy0q7Dr2U5TVbkHjT6p0Mrw0BAs/TMXbXrs6TB9S2X/
	 8Rr/tROTB/CgB/tYuRJ6P7Acdl0vtMw3G1OTDGi7wVl3lzIr3HmD1wH/fgsQncMtAG
	 QBnQx2hki8Mau0BFqJjKGLhYOaOcBmWrI9LckoGM/cq2Rz6q8SpmWLqUPYVL6d7Plx
	 +G9JpnjtOOwlJTzY2PE+5OS3Nk5iWJcHdITbECEyKfx4yjDLRQsPzDQYblcfVdFChY
	 q7frFGXmy+P0fR56LBU8jwnPHA5bB85TE5IXvkPfBVhGGfYI+pay7QedrIjjhqhjm9
	 W2iH9w10v3mSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2595C35FFC
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174269999363.23790.2979972800456997540.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 789752504f7abac4822e98792e208e62dc7d3287ec41c27c60065efc696c113f
Date: Sun, 23 Mar 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742699993
