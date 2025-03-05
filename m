Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C2C61632E4
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 15:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741190334; cv=none; b=XwA6SG2yOSbITxtLe3RrUOHtnwsx4w5OMMAIgljh+wBgLooPw6v5AqRAQ03mjaAM7bc/NVFTpeMxMUZzbwzZPNqgkP7HqOJ1vojWzeeRbAlDsDY/MY3HTZlSjUGQzeupYaDBR89auAaYCWK2sJJ6ZcBqgamyrHe4xx5tFRzKFvM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741190334; c=relaxed/simple;
	bh=12oxV0Xh1Yk1nYjox1iHrM0dfYfmkx+Nbu9rXF7KB4Q=;
	h=To:Subject:From:Message-Id:Date; b=IdLyTldLtP2lsV+Ud6YzS0H2LSDmVutxNoxVi3zOvfDAwgqvswdzgOhvABqY7SK6oJJ4lWIefQv1Fkmzh4lTMxlpUUpkt1bEXJIGaNb6fVY/HjgzqCwXxnlV3ChzBU7eywhC4mSU+QtoA6lyDMUOPD094fKNtB8ZOzdwRa8u9OE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JlOEgBHF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JlOEgBHF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8275C4CEE2
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 15:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741190333;
	bh=12oxV0Xh1Yk1nYjox1iHrM0dfYfmkx+Nbu9rXF7KB4Q=;
	h=To:Subject:From:Date:From;
	b=JlOEgBHFUn+kZg3Cs0XqyNkiPA3QWSuv5O8J/yKZfUngBp3UK+7IDPsS+/dMG9wMD
	 bQ2HZk+foGOx/yESgM3/R/yoAhUivMlQ8tKTMENjR/Bu0zuI9t1YDTQkvQl+Ux9cQX
	 yv7+H9LRKVrptWy5lG0g1+TZLWl+86YVQiizxgRGIBVxrnILv3BzdpKC+VWJn1mTUz
	 0YQx3sSz0WqEDfbD8+jgBLfjBFy570ztpuLLLw0Z+9jpO9+aUuNVnha6nG/drkWhFW
	 gdLPVqjtmhds/uLJz/ImsTfbo6ujDPq7BYwlhE2ZE1PmkPyO1wmJxT8nFuSRfkl3MJ
	 YIMIT9Zr1iDqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A127CC19F32
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 15:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174119033365.29391.4693626627998648627.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b162a906843987373567f0f9749f75a818c356eef66811fd997728845602b0c5
Date: Wed, 05 Mar 2025 15:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741190333
