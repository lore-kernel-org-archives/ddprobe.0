Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D828226D1E
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748531394; cv=none; b=d030SWFZYfneoNLipWprG9PUfqKvtOmo9iRHgmsCjpEhH0wka7JJmS+pKWU/9oVozj007S+1UxjFrSk1fi/fTp5wT8Bs/ykNG6Lc0GDgEQkLjeZgGNRF0bRs38ajN+UT0eLhECK2F7fV49bBhWq3r4Iix5q8ynUeRfyEzUsNkpA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748531394; c=relaxed/simple;
	bh=vLlGga8Wvv7mcjy1zSJ7ep3moUKJZnjos94UWjbI70k=;
	h=To:Subject:From:Message-Id:Date; b=gi9GbpjxdTtIefNlZZDSkhV9JIczz/afsY7hlwtZxzWfDRvP6i+XE/CFIdqRLe1rl1h7hMEmk4WBx3AulIG8Eq4idHurS11FUuwEi+lMh/72S+qRbg5N1efvMLBpjAfW9iJRTdhcuW4cFccW3H+Qk429EZbhb6VV6kJrlxbjcDE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r9uM8+Zj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r9uM8+Zj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EB07C4CEEE
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748531393;
	bh=vLlGga8Wvv7mcjy1zSJ7ep3moUKJZnjos94UWjbI70k=;
	h=To:Subject:From:Date:From;
	b=r9uM8+ZjKXhLo5VNV+aj+cfKbAt+FcdSLtwGtPaUj6y3+BZEKdSZkoX0zT96gROH3
	 GLVe+hLYEOQV6j4l2fWsAvdK+zAEBTwv+ubyojARS/Vw5oQQjjP5jS+EG1wm5xZdi1
	 yeMjVCWyQYPrvjkgTnFqmaPx2vJJvAKyJ4r/Cz1+azMuOtpb2sSKP+usEFSziZfkIN
	 Lrzr066H2gosTvIncanToK/kYqNxtoG8bYr7bP3dNnkhkbiUYBh6rA2du3Gqs7oqpT
	 z3dZz/m4eysknLRrJIRfTXzOOZQPkHkPHXmVjxM6c2qTd/SKUsk0+96CxFaLkcyOBN
	 aWGRa0t5zqFvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F14AC54FB3
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174853139357.6932.1795788308461727797.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9376c9deb009a3457db704b0ad5a3efb9c87c0136612573e9a0000ace46b7d86
Date: Thu, 29 May 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748531393
