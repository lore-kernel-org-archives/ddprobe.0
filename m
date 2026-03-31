Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 235C1396B73
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 12:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774959894; cv=none; b=Ael8oN45FXtB3yFNggERzECdKrZDqUMKxt5Serhr6xxy4Nv0ijy3uxOUP5/F9uuezrqabQNjXYbJBrc3Zatrr/k/RTJ48dKuePHyznJfXDgeK/jhsrE+pYf1kZ6HdlE4Ilu8cHibJGPVzyg7ecdiZx1dnoLq1B/9cepga5PJr6E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774959894; c=relaxed/simple;
	bh=h65E7MwNjLEVNduMJsSljPZhtyBZmkKOjYy8hLvYrTo=;
	h=To:Subject:From:Message-Id:Date; b=fdPQJLjGhMXV7KQ15Qj5mLYltDLVVEuqz26LvbRGppXDys1oQUPBQFJPJTAuGfOVEYGlpxV2W1aumkTuN+y8KJ6XYH++gu+Wa10vuqMgnn9l7O6kfuw1nufzXU73tn5SRMM95CT/wG8s66ozlkhVfHrikGecxEVJ0tX92eOAiew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qcVb/5zf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qcVb/5zf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFDB9C2BCB1
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 12:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774959893;
	bh=h65E7MwNjLEVNduMJsSljPZhtyBZmkKOjYy8hLvYrTo=;
	h=To:Subject:From:Date:From;
	b=qcVb/5zfShz9nl1MVWveA41mD2YQ9wCD2Lhgwr2LrwDQtNJXxVIy4nWoXTlmymgvr
	 /tq4YNEbHk9c3Hbq+mwXvugSE7Hvepis3Bzdzp05nj8vBWUDixTIURcXYmFi15kU8B
	 UxADyGWqXjv5FBrjWMci31AcyiXDhV+gHEUHpe4WHJNv3WLf3ceMlfn3kvqgMpvG1D
	 yhTgvwNZgxUfGSDcH+jq+2ipWup3Oxe5TlM/92DIXd9W6AUVrdic4Dj2kt1NmjfVH5
	 9RcRjuZd9DYuXpASZmdOnozfT9UcH0gMxyhuc9o9FevzmOhHJFkjFoypT7u6VCwj+o
	 JpXEtDBVcGRFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CC4E1061B37
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 12:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177495989362.14455.9632662580172716875.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a4ef230e90d1da93af21e2a23ca8be34c234cfe32d9aaa08eb2d0e52e93ba94
Date: Tue, 31 Mar 2026 12:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774959893
