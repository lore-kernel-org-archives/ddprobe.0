Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63150175AD
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 23:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719184943; cv=none; b=bSt0TD2cbqz5R7CUTZA2gIGPtw6hH35hdhIU6ZWAmqrsWQuQCLTe8HNXwu4Hj36tFv5Lmzi14Jb5yU+lH0q5idji5GUPVWJIajdvTlHNxxQ2KAaojR6fUQ3DHhAQ9jwNBvajR092XhBdGNhpJsr2f3SL0qCiaGzQKf9hX925siY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719184943; c=relaxed/simple;
	bh=dJpZWReof7RvDq6cLBFx+tBJxvlapvIcPhcMTOkhuxw=;
	h=To:Subject:From:Message-Id:Date; b=qdGIbRtsJuB47C/1n2Bhe5bv6H0i+JxXJmb99unk1aBpgEowGJMV0umYUZQMm7yVU3nzd54Dxb6gPv608nbqwJDGSc84tdhZhu5iZ8H+1JXeFPzM1IArmtwZTbR5+V8ShfUHwiD64lUKFB2w7U7bvVCO0S2SPMbOrt1PGdD2h5k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DaUGHvNI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DaUGHvNI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF034C2BD10
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 23:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719184942;
	bh=dJpZWReof7RvDq6cLBFx+tBJxvlapvIcPhcMTOkhuxw=;
	h=To:Subject:From:Date:From;
	b=DaUGHvNIfqf1JKAjf7pGm7di/lLZdBt3Q7K/4MbrOlKH/Y33f2WFpCrjWP7rHY2rN
	 Tmuig94pvEzX5pM7ESBNFlSnLx4p3qYs+RaNOEY6Lp7qQHQg6xDUpVVNJGVkaXHZfO
	 rQ8Msc6z4ZLwc9j3fRwSb5NSRuz8ZTbws5ltSzRvkdgZNNX1IYvFzVuGYrmFqGnV9w
	 9CxxFSm3daVTAydBylYDTnEItT4MUosQ4BgJyqVCgsi80Jm55+m8nkaHMi1U25AcfR
	 c2NJyRY9NEoIBf4O9IT+UZ1/oRCGm3p2Yb22Y349mNTjRy2RcBhvxwjQ33BPzdP27T
	 NGXzBzu5nryYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8873C27C4F
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 23:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171918494280.17064.15064829069078253108.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 467bd5eb6b62ac56331315b07d501f685e6d1406c66befa8f604de414cdb6cbb
Date: Sun, 23 Jun 2024 23:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719184942
