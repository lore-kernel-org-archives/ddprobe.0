Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D1803803FC
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 21:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774991694; cv=none; b=lOdt57vUez2hPoCgWVogkVq+RAtfISusdyeVtkuaAKCvl0wJ2fqoiB+B+oMt6Buod1vSCyprKw9aYQlgpgxHYWSy/X/2VZrKnZ84QfIye8m6DfxCn0QFnq7nKXGSAKZwQTWJH18OZqs3J3S3bKshXMiIszl5O6625bjSO62JwhM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774991694; c=relaxed/simple;
	bh=fLp+dj/0PdvxCWBis4rQmDL6iUQTRlVqiVmw7Mbfosk=;
	h=To:Subject:From:Message-Id:Date; b=R294rgozNoMPEJ6keHaeDUYVg0NmChWpW1GVSvURWpwmfRdhXLSpN4a2Pxnwfn/VpS5CQJBo4OSeJzdCzMPFnvj75t5g9eiAlRUq5rYWXDEW1ZAN96CnB1urckX1mS5cTQaKkgwbJZVWUwD4mYJsD6ofv/6fSP+a6iyW0TdJxwY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KHU98mBu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KHU98mBu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9DFEC19423
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 21:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774991693;
	bh=fLp+dj/0PdvxCWBis4rQmDL6iUQTRlVqiVmw7Mbfosk=;
	h=To:Subject:From:Date:From;
	b=KHU98mBunfu+BYf6lt1VaIb1L18reXrSZPd83qiCUnX7VXBO5DWieCKIhJYmMDIoc
	 nzVZYfwCk6FnJQVq2Tr3L883pRM5JYwj37vIhsBw1em1jlAEMGAGyyKPHKrZSmDVjC
	 qsD7bvL4cBvqA9EfwoIE4IT3R7S/6ZDYsgs+zZEWzTK0tULUAmYRtiET4XxHl6eKGp
	 KhlJRgHvjNJksmfQ9lrP/SqOv/agnq60zSVmDdN4LSeGkxyfgPftmHuTPq2fw08uei
	 yndUN0KPXGkGIJI4FKxr7+MIKL98omrwsMD0jvFGblu6tgKhXS85ZdP3VMTkr/+6z4
	 bX0Q16yDDhv9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A881510F9300
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 21:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177499169366.22238.254521660165891176.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 374157d5f5ac9c22866e22d9ab8cc4c5b6ea1d534fc63f3ef71ac7da5dd9b279
Date: Tue, 31 Mar 2026 21:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774991693
