Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38309179A3
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 01:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790557834; cv=none; b=UdunnGWnSPOHnLYzr3Vgtj162cilNpcf0EBOZ9e7cwXkVMuASh+9WdBUieNDM9mg1yRHKCsH3qqmjt8V5h06jDUVYyQ32Jb4l0aNpvJAXWPwMrTMGLyqxnp4I65wwYB48NV0VH7oSH+cYscPDGY1cNhAMs/GY3y/uZgGHhai5Sg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790557834; c=relaxed/simple;
	bh=XWRwUZU9LHHwstEapOuyqVXwDyVSyQd8IUMHy1Y2W2Q=;
	h=To:Subject:From:Message-Id:Date; b=ZMK6KqW28mLMNlIClVhB9ERny9sX9lBwS+0NClihGgAF+Y/OBFFzCvkZIKPZJDl9YcIHyhg8n8c2eJDYliLgeFBkrIu2DSCCa57fuzppWiQ0BeCrZNHyVWEjIiYbbIVpte8vxHZVopbalze23dRqgU/Xu97x1n+Umzm97oeHQus=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qxbbglN/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qxbbglN/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7454C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 01:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790557833;
	bh=XWRwUZU9LHHwstEapOuyqVXwDyVSyQd8IUMHy1Y2W2Q=;
	h=To:Subject:From:Date:From;
	b=qxbbglN/dytJvFKWifVBsUKzo1SElGUvm0Qr2J3vGdAClgRYTm6t8pIbGJSCQORm6
	 Bco1AOYFsmoiHOhIpCCd99dv+eXPr0ZPNoxq+qSkgAqUpXUomhMVH9zfPbkBCgB3DZ
	 bKDTeEfRn84r8V7tD6/Gzsbnj2XhgiuBSvcolKWZdeuJ5BE4MQY/qJVN1/Oz9bQYxp
	 ABZQbEQuvqkDtEZnhwPnlm0ebRAwZuqRCC5YO8udbG9HiUgt0VfRHwN1etEXdrNu75
	 XG5QHDOqFoRXxabJxCDKt/t4F/YlGD8b++wMr0GmE/vLAaWtQyicQfxbXjrCiY/MTg
	 uPWoxqOWfamBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B33F4C9832F
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 01:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179055783372.12838.17155053431529445570.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 504f20818e30994572d5013af0cc755a746a71859b0a94f66342bdbb63476e85
Date: Mon, 28 Sep 2026 01:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790557833
