Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA4CC5398
	for <ddprobe@lists.linux.dev>; Sat, 24 Feb 2024 02:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708741096; cv=none; b=M4kNhG3kD9S9W1MmQOB9WNafID6zxXbk71AlNsCkisip5u9Upxl1Kl3JzIVYIQ3cnY5HgPkhy3duU0/zb2SQEwyvE9ZayAWkuD+Zjuey/hkRP2N9sbxhFpn/gZNxIqzTfD2GA11SRhgK1iLouaTLpyNGHrEb1rHAhG0G79QvgmU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708741096; c=relaxed/simple;
	bh=TAiWqw9hTWmqnu6GPv/Mw6VpiF2+XkGW+hx10BWiPuo=;
	h=To:Subject:From:Message-Id:Date; b=pz0osotXyv+Vs/MBm5c0c8gXY0ytd8AJBlTMaIlpCqFCQ2eGuCUJuJ5pAjiD8CIQWnm0ZWkoH0MHD3qdDjmWD2lutFCZZ/tHmCtjwRVXKQDJ7B1kKK6MRbgy+sXlUOTtL30E5pUrzPxHrGDto9AMuoOINOC4CB0YYuHTB5ASju0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q6iTXQ8G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q6iTXQ8G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 817E9C433C7
	for <ddprobe@lists.linux.dev>; Sat, 24 Feb 2024 02:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708741096;
	bh=TAiWqw9hTWmqnu6GPv/Mw6VpiF2+XkGW+hx10BWiPuo=;
	h=To:Subject:From:Date:From;
	b=q6iTXQ8GuJBZlzTLpFJGSDka+/kbf28xbSt0xalSXV4JRNiDVBcKx+PCSNXPR9faO
	 51W9VtBg+hNL/UUbFZs4Ml8AZNeb0NxU2cTT/Jkv2W9S/SaPcBHWWi+k2sKuS3GwAD
	 ljMJoVnUbEfd+g9NOu2yo7rNHn2Jn1YOj4/Rm+xNLk9wcQSlZdzWh5dMEgHqwlskUA
	 KwBGWHymB3fOI6vFeyQhtbPwWkeGnc+fT8yZC8o+G9tc9lPiKrBjZ63Mz3No4SH7yO
	 E/ksQt9D2uTVxolHc3OPBzjls+yDr5BcD2iTmeY+MLQ9C2DkdYMhE1MXiP2uPGgeuA
	 3WZ0mxIoWFvEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67B16C5478C
	for <ddprobe@lists.linux.dev>; Sat, 24 Feb 2024 02:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170874109641.1960.9528028371736199517.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af638269b029df81079b099113f6b4539ab536de80832c70e79fcd4c0ac0f44e
Date: Sat, 24 Feb 2024 02:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708741096
