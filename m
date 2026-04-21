Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3320535AC18
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 10:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776768454; cv=none; b=bW2WZ7WhKUJh6ZlZXgswOH5IZyAs94kalI7/5h9wIW5X6aAMpUaawWKrfTiqxV0CwcwpaOomK6HF3KdqQpUBCaTdXibGVNjNum3ufFJbFtXgwwrks9+Hmx/FBEn5kfm/JbGVrN7RmlaOh0MzPENm0VWC5nUjQJjvGgAi1YsAY5o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776768454; c=relaxed/simple;
	bh=jMvEtG2X90VoxvH6MJVq+UZthSypsKdTQLoC6R3+6n8=;
	h=To:Subject:From:Message-Id:Date; b=NcOhgCRK30eJxKHxzLWxIKWbhGvZNrwGbzm9Nyxd79WLyazFY4XdrUjeCj6Te8+LSKRmOYqAwy8Ga8Z7GE2u7XAHib/yiQTpPpHOjCyR3b2idm6NP1w83S/XvlrxDyQjyn+28MEwmlOu8eaByYCUsCtoktedELB3QjVeEqaYUsk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ur7nFd2W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ur7nFd2W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAFE2C2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 10:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776768453;
	bh=jMvEtG2X90VoxvH6MJVq+UZthSypsKdTQLoC6R3+6n8=;
	h=To:Subject:From:Date:From;
	b=Ur7nFd2Wbg0Tb29xZICE8YdVhCGlgyoeV6MuLzjp8BtfFGheUWLqjTBoHV98Gyomo
	 aCeudPLDIf8ZpV7n2fTqMIaxtBelQ6OiFr8Lgn84caffJXpfWCW87zOvYPJPwpIXwO
	 wl8mCOyqyGBlFmaI8wqGhHWEDlGpiXU+FnV5hbi05llxLM2BUBfVWghaxrclwkDmco
	 cJjaRxMMvJxOBDAnXGDOOFaulHzTrxQ5KBs7Ouj82ytT6pIeNyxNdqe+4rH1Cfqyhd
	 UDuB1aiRrCUe+BiH1IhR3/4gfjeEzKw23FIsNEu2dXE3u+73GlOTHtDV4n+jT6ZWF9
	 Jp8BpUl9Ty1ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A92A0F89251
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 10:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177676845368.20188.16717361501130066202.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f41ec9afabf5173b1c4fa5f359dbbc19a83765c514cf6eba109f1ab5dc1a636b
Date: Tue, 21 Apr 2026 10:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776768453
