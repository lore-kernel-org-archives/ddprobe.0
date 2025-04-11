Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E35022101A0
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744384794; cv=none; b=dhpGu8j9D97e3iah+xJ4ufz8cCfqYMaxOCw3I1v9QcgFBliI35qqjHgPFyDUzACXUEmnXZLYZKzIxQe6md6Kh62bgSjrD1jt7Vv+Ge8ePA7Elz/fKL+095wlX9CDGvLVXbOF1xsEQEjt9jbOR0g4r8zFUXqFhEZKzRXDrOcXVj4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744384794; c=relaxed/simple;
	bh=N8ycqzTGwZrdImhSvYu0hnz2f77vCf8iUEAn73TVObc=;
	h=To:Subject:From:Message-Id:Date; b=jNaDn+jh+gobVGeHLOOdHgyxAwd7oY5qOa+4fVMnIQRYun6qqvM7+4GQ52o5DToy3MoQA9pn9/U1rpt5lz9Wm+2F2wK/hx1iX/1kK7A0NmF4Fu1CrPiW2G7e68mZecJDb3Lht9EYzmCrF0r8+eeyVCfQyhjPnIQRag0U2M2Ok8s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=an3qyu0M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="an3qyu0M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB51DC4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744384793;
	bh=N8ycqzTGwZrdImhSvYu0hnz2f77vCf8iUEAn73TVObc=;
	h=To:Subject:From:Date:From;
	b=an3qyu0MBpp24bCIe7tvfEHhwbyIFE3Gk86CgQtsg/vm5gGGOKsAAfT/736PulzJX
	 HMbMQwiY7I6P+y4f7DKbR4yNJVIxt+NUHktzaqaNEb1OErm0RfVY3/8rDZrrC2VqU9
	 S7aQKjkLa0kKdpLvBp90haiomE/IXdTFg4N87Y8/nLo85nvdLA/wNGHtadeukSM9LM
	 D6bivZAyIXbSMRKZ3J6hyjlE+YbSKCZTI7FdjH2EAyyI0UgFIpZ8OdkVNgpifh9Gxj
	 UqScWji0o5PXgP2fkh8PBMRcPydc9dt/jVcsZhNUmaCIwC7060rY0QSp4vvh0qFTfA
	 vGukrvDmyRJ6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AD59C369AE
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174438479362.14118.6946113346652216010.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84bcaaa1fe5c765be207b77d42a80f8854a90e1f809446072704dabed9e65b46
Date: Fri, 11 Apr 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744384793
