Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F0F71C84C9
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 09:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742029734; cv=none; b=HO164EuLMmasfpWRVn3hIoOsCaLa4Y8dIykIWbYYxRd310R7cjIu9SU4Hz5Lj0wEBhPR80TZXa5zD9or220CRuD9HMvMsowxQWeiITwPBGbcAdyNcqX/kPAlmmC7+kbV5qiuMKsd/GViNa6UygbGhSYcyRp/gAq0WOaLrlkSdfk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742029734; c=relaxed/simple;
	bh=WYAiiQIYQlMiOkdOgGD5LeLNQoeDEu6ofGs/eTr0AsM=;
	h=To:Subject:From:Message-Id:Date; b=ZlvFrSUKbn8aRUKE3sU2yvMwsfNF5iXZxEkOZm1lgvMH5tYswzo67D8Z9qjAGL103lLcf5rk9+U+EoDGcgHa5dUohDsrcxmp22aXUU0cCrn2DC2Hx5HF1smykXPAgkck7cnYoMzf4BUDChkX9Jzp+gIW5dmTyJqAlLB+at+19sQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NwqE8hz+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NwqE8hz+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB443C4CEE5
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 09:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742029733;
	bh=WYAiiQIYQlMiOkdOgGD5LeLNQoeDEu6ofGs/eTr0AsM=;
	h=To:Subject:From:Date:From;
	b=NwqE8hz+RIzIT/s7q9Ib5RFtKmO4z7laqKBMeugH1WH6aFf4YZkwEgknPf2O60V6l
	 c4GYIniqRnp5MVVbBBKviJs4oKA+fhutHu4LiGyMASHNDRliJ/DRAD/mJGjWf9BgXc
	 poBN5dAf7phFaQNEs4Gt5tMFJIo5IKBWCjl0ep3RvD+hqspZsZNnEP61vahnLEHj1t
	 gngkEyjdP2eHpwIL2rZJE3YHpkuZnA8BZuWAgBjvxxruYUPrk60X543eHJP06bqAGG
	 wwF3K8JjJQ1uvTnBAAAxjf/khTWQu1ydHNoRQU3Z7slLv8OPh85bPK08QUOin/mrIL
	 1+mLnNQ5td1zQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99B87C28B28
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 09:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174202973359.9950.5390973598905942485.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ddd3d7fd2608d457a9ae8c5c4d49f5d2c7cb723f1568002031bc600cb144259e
Date: Sat, 15 Mar 2025 09:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742029733
