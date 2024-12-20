Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4286B18C31
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 02:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734662754; cv=none; b=Eecxw2PCBrG2U0LTXBpd968xv1BwvfG2tQCKKo2AiA9KKKbbqCOs3D2fwNCk/doWlvkCmCp9qLd45sG8kgiJW+m1rSQsDfX01A8OCrRKlY/VFaUuZcIf72WIdmryMek6JFp4X0jjOJRmYIovT2c43zU9Al+feeQYnyqJOrfRzcw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734662754; c=relaxed/simple;
	bh=3yIoAunFYPZdKRRcuktTdi9ZLg/tSrLVqofA2JgNABk=;
	h=To:Subject:From:Message-Id:Date; b=aXKLFbfABY6vWkjc8jSNSHaBXq6me8SpcPWuL66DT1gYspakikF14OgCcPESTXLwsF/nAzIxwIL+AUfGy9OT24HAitBzxGi2AItW/2mDQXvfs+ZLc0hY8X7/VkJpoPG5yBaoQOwa5gYgW9i3iR9Po2Dqoh4j+Lw7sf2oevEeEbM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q3gYmjJf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q3gYmjJf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B90D0C4CECE
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 02:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734662753;
	bh=3yIoAunFYPZdKRRcuktTdi9ZLg/tSrLVqofA2JgNABk=;
	h=To:Subject:From:Date:From;
	b=q3gYmjJfDOX/uXE/o44vjDNEXuD0oR4y1pNiOavW3+M7fAVxAuQ8GM7YZyXgVPgKH
	 LI4n2E4Nh9JSA5MfxSwp//4KDA5OoFFNU4cDeUyy+Q+sFum9R53vVprsM7toQcSVmi
	 PzsVWPp7/wNAzasdUyOWg3gaT0oTuHPEgpAAKDYJdhSG9jSXjvyk8RvpdkU26KzyC8
	 esIKuZeLCQwPjoZ+UPKxJI/mC3BEVDUFvD6eigQeIQ/ub1BSjenshEgXO9JcDuXZ3t
	 VS00JSN+Q+sRhdxNTCbPOZ9vURpw/DFhTyK6/ER3G88kszXGZKhqqqNWBst0IU5Bl0
	 YrwnvRQURUxjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F916E77184
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 02:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173466275362.8222.3843652093948179907.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f6d5bbdf209be34b40feec59daa3fe98ea59e20ded705c4a52c39a7e1178c44
Date: Fri, 20 Dec 2024 02:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734662753
