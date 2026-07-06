Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37DC81C5799
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 02:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783304314; cv=none; b=Fr6AV6vf9gXZpFOUaL8315GKf8uFo1kmeJyNKgGFKKaf2eQtQgGjTrB1rH7mKD4rfYDpDvIJDzye6JbPjDOPrr7aa45KWYG5C5aHAWk9pKV+domQS95wNJlkq5s9c58Q/i4R+I3+a8XjiipgrYj/80AsRguRQjro1+oSq8/2O3Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783304314; c=relaxed/simple;
	bh=ncCsGsEPv1TMrTsr8dQoBVJh+KWJzBvtOBvmTmDpkWw=;
	h=To:Subject:From:Message-Id:Date; b=Qmjaq76QD2e6VNSUHSUevoeI6EiZDKcPVrjkhcuDArn3BRO5stASl5rcS894LqQNRa4KzDsDZKT8wbQ/4+kql+yuWh733rB17WO+L8oIiWEPdWlTUcP3e07FXdrO5Tw3k79hILra3TZNR9tu6lfddG3bQixct/bqLw/HaUF8PAM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p6sg/R8k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p6sg/R8k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA6F9C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 02:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783304313;
	bh=ncCsGsEPv1TMrTsr8dQoBVJh+KWJzBvtOBvmTmDpkWw=;
	h=To:Subject:From:Date:From;
	b=p6sg/R8kRim8CyDmVogDGW/0vFD3mFTE2XhpQtTsY727e7ld+LpSB1UYPB97L0x1q
	 gKnBbszqr2LZzn8z8eTmzD+AfolKEXHVZRSAyqLjuNhDu9knt+VG3DMtuYhDW5QW0g
	 /q6BzT2mp+sKJs1c2omQcOHyk04xu1Zt924fJl7aI+mNMEd3Vmczb3mpN6yXiDCTH+
	 lCkAZ5n0ygMqsVQKsCiAFt8VrfcTjVfaRpWtXK1Ecu3Z00iQnLJv8adkvo01IcEyBo
	 XOhcHOHR9ayIe1hx/yPvCEzuKY/kdbrTwdKIXnvDnqkn2h2NF3R/ZmKhClk3GNkq4y
	 x3njloEPg9ABg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8D99C43458
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 02:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178330431368.5488.9333697253274822564.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 448dd467d10420bd1531cc6916adb41c5cfa826aac73e965fb0cbc640e94f434
Date: Mon, 06 Jul 2026 02:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783304313
