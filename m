Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74D9013E043
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 07:17:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717744643; cv=none; b=HmlCey6ADpM7ZcLAev11BPe7oQ/MCxcBtMigYY68B4jRDoNPzq0ZT17ORSIVlEd6+hxrOnNwAvywUA8BCgaJj1S2pOaG9P6ABVTmcTqenaBTFW7PBbaq9BCSUtIOCvogIDU2wUl/TAy79PjM5VUjT3g8ACHXhQH81sBMfMZgFpw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717744643; c=relaxed/simple;
	bh=j8vgQJ6K6XUTMnbFHFSHmG/dYj1weuu9VrC0DHzcDwo=;
	h=To:Subject:From:Message-Id:Date; b=JwVrG1f89Xzmb2mUiifuMiKJOsEeucVn5Sxa8J8vVdgSPG4e/BYDQxV1xy7Y2EPNGV/ayim0cZdEDvwj2LqnYhPErD94BEdlyUdzSGLLRxPHS1P2OGu4VFuo59T54HHJdlRMTl2ppyn9lFNv+w1cgPN8eO76UyaMX/UiXmMzUVQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B75e/7IQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B75e/7IQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7923C2BBFC
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 07:17:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717744642;
	bh=j8vgQJ6K6XUTMnbFHFSHmG/dYj1weuu9VrC0DHzcDwo=;
	h=To:Subject:From:Date:From;
	b=B75e/7IQzOprLuTsY3C+ceK6J21OqaGF0qFP372B5zNiV7uqCp+OHnB5G55fTRCCs
	 q5yy8gFoEAEZGE1w+v6WtdlsLko1jtUkYKtFLWjl3eGvlcKFmNiAJqyNY6tY1E8APV
	 nCZx/0wQBBrUorOiHlWPZOTJckcIhx9fiLl1blGXNT3AerIVlMsY4ccgJoWxxeys+1
	 10mPQ+yxiVKI6oLyARkGLtPdNRmDuA7BkKHYrTUcEd6DmI0X3UO0oWdOZJQWz0qLNQ
	 pFAVeXOT09xsE6UtoiAtkwRL84WSKWRZnhBTEimEClXxXnxTn7HpLoRl+F7GzK0UQ3
	 pecEYgYJ7wXRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CEBA6C27C53
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 07:17:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171774464283.5851.11826416671502163800.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99f962e2f60f8d4514dc3119de5af9b35d8672cb31ca6d0be07fb00061dbe1f3
Date: Fri, 07 Jun 2024 07:17:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717744642
