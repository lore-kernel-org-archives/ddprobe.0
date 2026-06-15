Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 787B13E8C64
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 12:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781526394; cv=none; b=K9XmK6iZMOuRi7i+9JuSZqNkM7FfeQ6ixLffpXCMVQ877KdmMY8d3Jb86mWpvHvAPntsS4UwrZdKlXxjkbnN/s7hYA/jrVxP99byxNGD6a13ckrka8DMQAXUosnaD8ZhxHCn53fBaOXwUfDmICIu/dUNWXtOaqbkHjBgwZgWK/k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781526394; c=relaxed/simple;
	bh=OjgKRoUDvYQ2XoaqFpJ3JGqiB4gtZ/xXFjvDkuaQlPA=;
	h=To:Subject:From:Message-Id:Date; b=Ead1O9zskgI3f3XuguR4bZmfdFQJL7lXYqVnErZd1qWn/+Tmodw7/xw6uJ8CgROhu+5dnTOSR7Gl/wXKvcFS8sTUwYd06gGwm12acLE82l3qwc5GtoDe9edJH59RiXi8NGzto61lD2B5g++Mi+CE2Ni8XHVFcq+I7LhVWmttMPE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P5lFUtP6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P5lFUtP6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3291C2BCB9
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 12:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781526393;
	bh=OjgKRoUDvYQ2XoaqFpJ3JGqiB4gtZ/xXFjvDkuaQlPA=;
	h=To:Subject:From:Date:From;
	b=P5lFUtP6/z4iaNbhwXp1a5YfoWy0AYTL0X+VoRlQuIk/HBuMoYjYbXN90086/CdWR
	 ZfxXtoO7ATex7ls+GDspCEQ/ZL4wvg5P+LlSCu8Oj9XL3l11aspq7QI4Ir4PvJiuGD
	 1sUCDqodu0mfsQJqWlYmm8nq6dnxKZVo4ml8ZTEdK6Wt/lbEifER7FKj81ic/JxG6e
	 8QwbkQ0NFDhvMMwt0g0GCDWXIYvDtPQd2pAPFZiGNLqFDi6AP+woXgsEn2Izl5a1j1
	 zPs0WPNzhoLQAqymP5OdruF9WwHNLzmb/2jnNSitY7DtCy++mtLdbLTb76cuB+hxyJ
	 y/2SkYYj5XywQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB06DCD98DE
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 12:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178152639369.14939.3869568455078595638.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 472dc53852c0d1d23706eaa7637977980331cd802fbef0d96a06a26013922106
Date: Mon, 15 Jun 2026 12:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781526393
