Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 112CE31A7F6
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 09:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771322094; cv=none; b=uqcOlJzlopsMb5cV+e6vdR4oVIzsjlZixgISvw2iSo3vpLjiSNZerQMvDoxWLX+DiqnjukaljuJeQg+MCV4pJqKnR4i+sgGSlv7Kiu1z36dy6pIZHYVkbL7sQ7Wz55VZr4DqL11Im752qW2sj0Fh6dYdgjoG7uBsmvBkOwH6uIk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771322094; c=relaxed/simple;
	bh=3Oj2tFKnT7H8Q6diFSqTL6ROK3PB0faZJnqwXuF5HKs=;
	h=To:Subject:From:Message-Id:Date; b=BYzQAYcbp+Pb5fuB6Y/iGtTqgzAYmLEaVhBlb3J7d48Fxt88ir7IXjfoTdAlx2bT5R69BPQq3s1i95HKZ+109Va6BPVtsNmVUVo6A2UWVs/+6HvX1O1MLo0tcae9rHcMlyBjfjoKtvH7BJR0370v9ZpD+MpmrsD4RNPs5fYDkbE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k/l/A1Ym; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k/l/A1Ym"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A70DEC4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 09:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771322093;
	bh=3Oj2tFKnT7H8Q6diFSqTL6ROK3PB0faZJnqwXuF5HKs=;
	h=To:Subject:From:Date:From;
	b=k/l/A1Ymlb1N+23GYD+ik5PqSKfi+6f+5EZd9zZ4PU0oD30yNAJDHy//I36BYSldy
	 7AzaOG3py+62efLz5K+TwwmMTZMYgiAiAxFVlS7TkBI2vGa3nEPxnMtW0jKQgKj1O1
	 nLJiqBN6U4SW0ML+qOtzxwqT6BGnp7UajaXTMMnAGPWIYX4VprozaNpI8DjZ72qjYQ
	 zLi1ww5QxcZ3xYJFXavHIA+LMpQJ900NI81zgRvt5DYigJUEBSn+AlXUKTCrVCPWxA
	 ZRwr0G5/dGRqvB73EkcWgT3YuJAXeks3kd7QuD+DmiPNG3M9opX+YjNNxlQYNWZabg
	 GFNDp7/ZMG8SA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95A27E68156
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 09:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177132209360.1245.2639556933461506073.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46cd34d209d45c243edf3ea34886c67ab993c2e9bd25c56fc7f80a574ba8c181
Date: Tue, 17 Feb 2026 09:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771322093
