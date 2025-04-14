Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 304942820D7
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744648794; cv=none; b=XQLj9UIpvFozrLX/AUInKiNwO6tTMbn67uOB5Hnue6w5lob+0th9xF6MFkXVuCCSMMfWKQ1DwxIeQdeYkIbfddtHug4M6h4NQYPnDChu7dbGy2FW8/17pnNBu9OcitnaPz6aF9FAiOXFlGPV5sxaGaWn06g2C0QV009k6fv0w64=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744648794; c=relaxed/simple;
	bh=VHblm2kCxZOLjy7Sf4udwFJL49Y2uBjrp0wP9tHGLdI=;
	h=To:Subject:From:Message-Id:Date; b=bBPxCz6BXuVh7gQ9ZwSSyJw+f8IhNu4vK+54/1ehjNWCFx6ThWnfNti0WMiTCWLBfH0zPMGhYjazGbcKiNqmSYMEwNkSPOnDb7zOzjV6OaJ9oiMn6oWfhRn8quao2y8Ag6QZhWJxe33gx2yaaeAOS3oTGkSmjlKpHTfK3C2Pl1U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QywJdYR0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QywJdYR0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A624BC4CEE2
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744648793;
	bh=VHblm2kCxZOLjy7Sf4udwFJL49Y2uBjrp0wP9tHGLdI=;
	h=To:Subject:From:Date:From;
	b=QywJdYR0h1fVggha77Ombw+i2Qs4vEcRQIvLbJawD86+rFsL4kU8TvqwghEJfD3PD
	 ND0on6lyY+4QqBCfXiHBstyxLxWiKuGFrkxm32Hlw/6cnZ8nuA+lLh+lmi4YqwkCgU
	 rYd+VSr1Xo0RvJ1gAHS9SwmgnMcfsw9Cvl+nzW0cK+ISN/nAyKJiHYtWYte7nc7nT6
	 lZNtqBnBRnBd6WZSUZBQ2su6lXVB/tLhaiPUNTfa5fP269zhA2eQvqnLzh6ThjUjAl
	 P8K7VjbvhYWLJgcawjfJPSt4+1vXzaBcc3jvkcTk5e2G85j5Xlv9IFUXKkY6maKXEH
	 Pemw9g6VK+LBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92DC2C369A2
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174464879358.12882.17734535701831298010.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2659023df1951cef0a9c36ec247e10e49920bbdf506f93a3d43dc88095a580d9
Date: Mon, 14 Apr 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744648793
