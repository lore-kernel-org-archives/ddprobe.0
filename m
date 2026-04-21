Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3927C346ADA
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 12:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776773254; cv=none; b=jarLlh7S93GKiXEkI+t6o7C8SGpUneI/olyO/O2zLw5c9+EWsSX+xr8OZVOZBQe5RyJLTfiNF7tPbStqlux3P+3pOjkBTPowbFRuS4Axub3+38wQJz+GZjwJoYLs64o417QoRy7882AXwFtU5l5c/gOPDW7xQvIwZd9VePSRwx4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776773254; c=relaxed/simple;
	bh=Ap23OdcOYfMiRz4FnCs1I7pgcFnXdIyJdaQVKVt4IXw=;
	h=To:Subject:From:Message-Id:Date; b=Nz3uWMR4tDyRZKX2FTCZtknWWEGkEUE7CAVyXkHdXx3DJFSFQkV7PK6N5r+Nd+up7KmIK6ldmlYApz1FLsn/RRKIpYGM6pZHyleh6puyvvh1/XNOetKLRKSabovpurxgctwk3+rxi7D833YV/uCJn6TUjT8r3SegwaDZlajIRa0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IJrn9nTK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IJrn9nTK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1655C2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 12:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776773253;
	bh=Ap23OdcOYfMiRz4FnCs1I7pgcFnXdIyJdaQVKVt4IXw=;
	h=To:Subject:From:Date:From;
	b=IJrn9nTKC4nSknjAwowYq4irblidEL4kVutdv1Sva2+iLOCuaQ2iH9FsxN+wcwKLU
	 6cY2MVwg82cWZfLbLdgcuZKoD+i4fyAfJ+5bCocJMbtJ/OOWMNjvhpXNj1TBmWI5Jo
	 ZVuUoul9Q3/Dk4rjAFAMXHTbjnYTS27ILvylzmgabUTlzwfi+3zuLcQ/ze1xxxggOx
	 x4UNk6Mgm8YoQ/3S+3cLZdm8Rb4tM2seeF+OVxDhDdTkiPcHTAn0X5KSPotkXtXI8x
	 QcOg4uk4CvGjo73F5V7qpS/x6q+3kIN1vM9ceJ1JlDJPxjzL0ZJcGawC24qsUc2Zbp
	 c5x8SCQ0+fSYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD2ACF8FA65
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 12:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177677325369.20749.12084958968620671878.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1da34e425e563aa3bb2f5a46f8ac4659a5509adea8fea74e015176582826538
Date: Tue, 21 Apr 2026 12:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776773253
