Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E95AA4A
	for <ddprobe@lists.linux.dev>; Sat, 18 Feb 2023 20:16:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EBB36C433EF
	for <ddprobe@lists.linux.dev>; Sat, 18 Feb 2023 20:16:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676751366;
	bh=2j27ZuyHDZkBjx9bTPnFY6/JaOGmWN0Ey9ahOz3BKhA=;
	h=To:Subject:From:Date:From;
	b=d+oXvV4ZB7MHjFcgMcGXfn7EdaA1QkD/Mdqtgf8IDHnSu/8af5R+U7dLtflxbxx8b
	 EtJUJE/cHeYtfXjsk3EJ0EXF6pKZAH7IyDACBvihmWAYiAY2wFOA2i/wlGSz1THIn/
	 ciDW+HP+qD0JDXwBLQYeHEgKw33GaPT5ZV+J6UVqRrbFkWZ1+ocjU/t4OIP6e8HiNj
	 +YOaWQBWAs+cMXShBIgyZnfZ5Koc4nFd0XHGijR7XCOC0H9LCQKslfCXenQtgoN7wf
	 JWopNo5HY/JK6Jbdw6msy2UFY+rHcXFBHpK4zjfoOOiVzDnmCKFD+GT1zjPR4EzB3J
	 i8ofcG4GJANbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD9F7C61DA4
	for <ddprobe@lists.linux.dev>; Sat, 18 Feb 2023 20:16:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167675136578.27597.17513713453670630393.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 142bbd1cbbf34a0201e7f3695f5c746517fb40fc4d0c9b4bf9bddaa7084c44ad
Date: Sat, 18 Feb 2023 20:16:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676751365
