Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 244D11459F6
	for <ddprobe@lists.linux.dev>; Tue, 19 Nov 2024 11:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732014954; cv=none; b=ptrr9QTGKgFVuk+WD2C3CvpeoaWj2qhih04N52GKtQ02d78WUoPa88gyQWSFYEnRjpN0vtpPCJdBAAnwrYPL/HIpNS+ZXc23DFDhTUswNHPMjQjHTgaNDdXKHD+ckNy0/y/a0sqyNwHWY/18cda/pAfjrDnnhpMy9MD20g8vt/I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732014954; c=relaxed/simple;
	bh=a3xCYbF7j0em0eANJ0vwDXU+FSwihdLKyvcPwqUyqlA=;
	h=To:Subject:From:Message-Id:Date; b=AnV/IJTwolxxzIW6Ui1OSJ4gd51nmt3qk2gGMN8Iok2DUJG/kytcwAnBEKAv/33LKOVLLXNVy4BWQkjcIf1gzBPaqZviKLOXLK7EImix7dZj9ujDcxV/omRhRlfYsokjo3SfpM7Yh4Q94KNZPOSsmTf2suqxpGMHKiQV/DayVbQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m+54xfu/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m+54xfu/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3D47C4CECF
	for <ddprobe@lists.linux.dev>; Tue, 19 Nov 2024 11:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732014953;
	bh=a3xCYbF7j0em0eANJ0vwDXU+FSwihdLKyvcPwqUyqlA=;
	h=To:Subject:From:Date:From;
	b=m+54xfu/EgYdSgYJ7tHuCQJqchwr1VpZnsqlF8Ru7Yk9L+C4Rh8KSbDq8xnBcior1
	 nj/3k5HJ+wGgeg6A0a9yvsM+6WJUwJlJbJy6HbZ1KjEw5Wff9Yhcji8q69mA2bwMWk
	 RBtdxyGbBJBDHoeNFsQjww8hDa2JPSdJXl4Ag/xKfeHIQf4aAoUYmnhFKfU5yyQXzc
	 N3xIWKktgN3DYzTnqw3Oru55zColOuJ2Kqc868FbGLbMguvjzWnMRiyKQZ41V0r9Dn
	 V6C74WOpe/WBXkhpNlN2OnbnMdiCiiSpZEUKpk+tVtOgdVZX+TZh3GZfflzpldrM7U
	 XQfVrRRkLWIng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96BC3D44142
	for <ddprobe@lists.linux.dev>; Tue, 19 Nov 2024 11:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173201495360.22803.15497316106298394594.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e370e07d789901d93bf573e2ffea5c765273c80df84c112d8597e231200571e0
Date: Tue, 19 Nov 2024 11:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732014953
