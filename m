Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 047E5211290
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 02:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763691114; cv=none; b=TZm9TjH0PIfLjjAy4GxtMjdUFFcyiVzpitAKLdyUiVrI6o2QfzcwTMKQ8i1Bk92TPql3JZFSNzPQZA4XFCpyu8fuAfADuOaDA7jFdcHbZEZbYZ672ffvth0vPg72MRZrOz3jNpnsmqdKF+ms4oGor+AtIkNa9Xbi6/4Ms73/xx8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763691114; c=relaxed/simple;
	bh=9vkh/w5a4Gj2zXzIKdnQNvJ+CVA3bBBHUxqE1mDxZL0=;
	h=To:Subject:From:Message-Id:Date; b=MmegZUCU4498sjElsX7DfDKvgBCYVtERpbae5QLeLDct13/OXLJX5C1FQQ3j8ZKVvg6jBniUMw6F1CqOsIPHB6YtIQfsbzrmEBHqJmkkJU4KF8b58bXv/63RW47Q40J2pMByl97CEFQ5XtePRNbsZWeqiU/1lpYUfTJoO0kzOWA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fLsZuPYm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fLsZuPYm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EFA5C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 02:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763691113;
	bh=9vkh/w5a4Gj2zXzIKdnQNvJ+CVA3bBBHUxqE1mDxZL0=;
	h=To:Subject:From:Date:From;
	b=fLsZuPYmmBMaShxQXdSyExIrNmsdqwIfcU0P8c70lc7BT/y36JEyJNWqFs3DEmvPI
	 /3jelBfEPA5SQo4rWKCSO11R/mlK8krn3Zh6nj+e0hclNV1oJP9jQOhUed5WX+ZY+k
	 604TW7EF2cQNfIEcB3bpGv87vrblHCJ+AayuIpZubOU/ieRMdnK/1tIjsfyELK2bxd
	 kAOaQe7+CRLzVT/apguOzTG2VvDK4CdUVgzdYjheBoW4kz2mMFCmp2vlz+z4OWXx/o
	 ryup4f4ohZvb2XwmnkTjA7AhDSLX7zY3LScBAOeP34ibbJYp6WVS//tFxw7B3IKtyE
	 DC+pu+rXhjFNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C7DCFA46B
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 02:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176369111358.5454.6661123463121370473.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 726dbe5d38023bba7dfc80b1f920b9ddd68ce08e243404a5846fba4148a2fad6
Date: Fri, 21 Nov 2025 02:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763691113
