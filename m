Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27076800
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 00:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779063634; cv=none; b=J3aV7gm+ueWn7wkeZNYNMy+GVMXsLnLJWx47GUpHpzzqBQ/i4NJ7iXZnLoD9CNYNIj8EDpjPFl0BbcK+hLA5sW7fKm6EAQoJ7F0J5D7h1nQ+XAKbzWc+r1JbNhiC24YaKJmtnuZ84lJgArLsf96xVx7+ARNiRThWceIaHuazWQQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779063634; c=relaxed/simple;
	bh=tNamroOhoPjlg/+E1wuV9lwCvnVHBJv9x3EMf926ijQ=;
	h=To:Subject:From:Message-Id:Date; b=bDdpOzWH/gHwno2wC1sUyJqyVzUy9RhjZH4kVpRJTEuyGcSbS63Br0un/eO2BQRHQobtMw6ydd2CJEvT4YV9ePx16wFQ7pettL+U7Gw9dxTms30ZSprh462rfULeKTB1dcEQLoSXvJJ94s24UM/wZT+Xf5Ic8xpyWQI8dFogEL4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RiaoGhCL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RiaoGhCL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5D25C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 00:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779063633;
	bh=tNamroOhoPjlg/+E1wuV9lwCvnVHBJv9x3EMf926ijQ=;
	h=To:Subject:From:Date:From;
	b=RiaoGhCLTmpeCxDf2/aCZDt/zdO3Ck0QhWdsV3/Wx/IT/zAiBFdpD/6XK0sISe5kb
	 ye/Rx3uKa5BbuWYgIoW1Q2B1W+MjH2cVb7jcAQOs0S+Hmdl3hVQ/YZDjjTD3yfg61k
	 UWHda3sw+yhqgAOwy7XklHc2w5zVnYKxPWVMXirjwAFP/3K/EXVNhKvxrif6zmWwYz
	 BSKkrR0yMI5hXV7wvahMP3gwMJdDWE6lZU3GWAndVg+O7XtUhx0c1nRCwoDJ3r9m96
	 JOg8XpwXV8bGCLopNYKSRXjNyUzMx4mrvy6eFpgn39GBZLe1/oZbFSx5+r74fxJYz7
	 /zk303t2TnVlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B66EECD4F3C
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 00:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177906363368.2949.688722401186041514.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19ba72e3cfff49a23b13de114fb40f6fc3039c19ffed6f1db817efef97a1a580
Date: Mon, 18 May 2026 00:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779063633
