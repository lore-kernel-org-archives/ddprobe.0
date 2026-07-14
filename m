Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 493D415E5DC
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 09:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784023114; cv=none; b=RgrAJMYbJM60p1WUaGZEHy9Fy3/GvnYzyYh3Lnm6qJ0fmqjFY15NSHJcWs0wjgI0HaU/BoM9m9ixSoidROUqvWHRAMbFO4Px+neJEMcPkH1v4qcngKq06dqAETywUIIMVqlZFiby6fBKfB9SrDG2qQ1dR6gDAThO78A3eikF94M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784023114; c=relaxed/simple;
	bh=g2Nh8MFuivZBKaiidOEFH3okJ0GVBZGnWnVaQZLo/e0=;
	h=To:Subject:From:Message-Id:Date; b=DI6JAWIAkz6mz0E5iCUvHQC/Y11m6lXXoB0OTnbEhSj0qYezIbm60GwVfBy08Qkc+bwK4NCWeAPUz1+xOiw+LH7b4V6me0yWddq2wkz8t2RFKX4tt1shisN2m/QJtfjf4xau6GQXuKoczCLJ7R0U5ZlW+cSgWPydYrF+nNrT/kQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TuXtArjA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TuXtArjA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC104C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 09:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784023113;
	bh=g2Nh8MFuivZBKaiidOEFH3okJ0GVBZGnWnVaQZLo/e0=;
	h=To:Subject:From:Date:From;
	b=TuXtArjA+HaohdG2cTUQwd/iNyVVu7CvRT2DCKd2D17UAZCLp0FgNf2W6JlbqDnjc
	 Beyo0MP4ZQNYG6ao10BBlu64AFocpn3PBRlRsq0UJmuJwQeH4LnSPIJbdeZhT57NDZ
	 vhfKHK2jrJiLBu/zzkB2iRlmGwlkxvB2gqguv4syovK/WQ4fBZ4S6/CvkqNdqgE13/
	 yCxMSZJkzKW+vnRllgCrd+CGb/fciuS0QlUZ1J0K/CZv5xLsfEW+5f00pkyIjG92B+
	 A2xWjhd+3saJqabmD9OrYAiNo9/Kf7Ve6wQ0HyNuHAu5eLb8rkgU3EwwDUhcwBhLgq
	 3hN0VxpeH5vXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A912CC43458
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 09:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178402311368.28249.15165179157922258707.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cba1886bfe719dc5b1132843b01d11fb90d39832680ff5147b5ffa540568c944
Date: Tue, 14 Jul 2026 09:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784023113
