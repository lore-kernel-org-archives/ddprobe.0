Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E22351A23AE
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 18:55:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738954555; cv=none; b=OtpAUW4LSv0ehvcoqiFNaQ7FfvaVE2uhmtv0+i/6KiOXHTvNg6A8lUZmI6J/aUVVaJB14ax3hU5q4y6tIGCZp03y/OkBhHDT8pAlKqRGNPqkaOoECufvllae2/SoOKrUR+BsobH6VK8iGYi/6YNgsErzKfBcwtGCxUrdw4J0swg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738954555; c=relaxed/simple;
	bh=HKheB4Uweex61GSSxS7f7e9BU3w3OkZME11AQLOdmAo=;
	h=To:Subject:From:Message-Id:Date; b=t1C+Sagwyi6Jm9zXi9NQ7SkL2KY/4A2JUPALF6fjjO8u/CZQHSOXfvIHjZgPueeEPS/ritND0HRZPoZ57/AJslc53ZF2VmZHHo02GMjsM1u1TY7dMJegMqducu+nFtkwl7EBxbG0mZ1Zf13Qtbz3NRvRyG4ZCoap1siaMU1ezYk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OZXbkVq7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OZXbkVq7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1C283C4CEE6
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 18:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738954554;
	bh=HKheB4Uweex61GSSxS7f7e9BU3w3OkZME11AQLOdmAo=;
	h=To:Subject:From:Date:From;
	b=OZXbkVq7alwuaCmENdQ36CjkPUXGBqG1WxSHRtPFgpGMFsOMX/232KCmBCkOeFq6O
	 kQn2A4c2QgQwrVfadCvRVGOezpPeU2u+36RqLCjNSwSCBGEtxg0cwynokbMaTGWLR9
	 ECXt7fOmuvv8ogWqRUR3rsahbqIs1raiRo1LbmioQhap/QXTlPva4XWiy1gXaPH0yx
	 ffHPokb23Fmwusgn8ERFc3p3zZlzrduQCAre949jfkLkWupRW/WU1efFV3VSCbM/I0
	 RywWYjr/Ay7ieWfHSWeHJ8FsZ3GVY5YbE3FIqOCAegda76zVzubrK38xNs8UFOnhlB
	 bZgG1vrZpcv5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98D47C02194
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 18:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173895455361.26468.12126024978545433787.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8df171da619fdd4f3638d43ceb0805246307105dd4dfced34e221ea27d82a5e4
Date: Fri, 07 Feb 2025 18:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738954553
