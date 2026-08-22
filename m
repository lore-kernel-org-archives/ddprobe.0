Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BDA049362B
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 05:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787374834; cv=none; b=nerurZkls6G3yNaVY0XiVaGDNT+6imk4GpL34GL/RBC4KSdUDYAnld2fA6xgVHD9iWbdBX7HDxv0q1VQzoC3Yr6cCj2oB1f0u4jVUSaDv4Tm9cGjMRF4fowjDTKTX9Tu5VlZQQWIPtSmW/ICwgqdLqf3Oxt1QLcgeUJIfcKhZTg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787374834; c=relaxed/simple;
	bh=r5q5Em66H+nVKGVxn/zskjnJw4/9lKWlWClJK6emrrQ=;
	h=To:Subject:From:Message-Id:Date; b=NwGeS8PjvCyNSGKGzsmV1mLvRA+Rd6lIPTQbGo1/MW3Wx1X7NWVdyH+G7Y52kZzVV5gPc8PYA5JkQOs8qak31ivf77/cb79qs6A4EyjGoKBhUcbPGg8eJ6Crjy/mTCbQBQ8WPmsrs+wNZRcmlBIHJlV6hJ6zqW1MBlSZhhKdPME=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BOfDUW2S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BOfDUW2S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCAC8C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 05:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787374833;
	bh=r5q5Em66H+nVKGVxn/zskjnJw4/9lKWlWClJK6emrrQ=;
	h=To:Subject:From:Date:From;
	b=BOfDUW2Sn0wKBnf5PHcSYxp8xMLJzrLTdvVZiEPR/ipcCjuThdF9ENKBOnj8I8XnR
	 b3ZcM42fEHPXpPL7H6VdUuY1dM/s92UbyabYrt1ZlyQUe/thTEqVKLBKB5NqYDMR2/
	 dhPt9fQ2pOroswIsR9/27xiIjo+wkhMlvl3iL7fiCyniH3xN+ZNgxFeMc3Th0BHWLQ
	 hYZzmtZnipGgAUJbV6SSO1P2ntfmQlwEqXEFeVt8slyIG9EwKglCrsu4GYU/hLOD7O
	 0Xv23ANzKb4JagW9OGrskKIUew7sjqpDTt+qbZ99xC+i8B34DS4ryXrdQ9NWsPnpi7
	 wOjvNvHXT0VWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5EF5C5DF97
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 05:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178737483370.27805.9717322658020468498.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6bdafa2c798edc560e433f0d8c67a39f66273dbde31bf52094c9a5bdad786ff1
Date: Sat, 22 Aug 2026 05:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787374833
