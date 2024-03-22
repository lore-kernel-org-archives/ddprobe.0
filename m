Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA36615BB
	for <ddprobe@lists.linux.dev>; Fri, 22 Mar 2024 05:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711085897; cv=none; b=twya6c5KXSQPRnVHPMRek6R6OyIEXVnnsLg1rcnTNxJLASzJb9CLIzFLd1DoYKB+WND7Kq1hHhaFB8Xt8vaX7xqH0MERwbDJLHUMcNRooUkWogm7biWzwVhdnsxAt4WycL2iQkLSW/GEYVRmUJMurocY64sDCmBFLTPZjcP93ag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711085897; c=relaxed/simple;
	bh=L9FQRbQf6aw/FebwVTOEOEpMVHJzrnZ4HsAV4aYVXo8=;
	h=To:Subject:From:Message-Id:Date; b=ErezUrZ3XlAU/FLb68P0to09UtJoOzUrU/+1L0eOrw+yP7bUBuHxRZ0TlS7t4cq/N3XwvQ3J3+w7H5BpTLY3g0PfBQZvpMK2uCT6jYDM+RDa6Yq1nhLm5HJcqExNdFJ3+2G7Tsp/OR+RB4b8fsWmcD34i6aHRz7EcuAS1q9zpqM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EcssZiqo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EcssZiqo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E060C433C7
	for <ddprobe@lists.linux.dev>; Fri, 22 Mar 2024 05:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711085896;
	bh=L9FQRbQf6aw/FebwVTOEOEpMVHJzrnZ4HsAV4aYVXo8=;
	h=To:Subject:From:Date:From;
	b=EcssZiqowzRZwstJNAi+nwDjOW6+4zvtF9DSjDDwEuos8SY5Vh7xBo6mbr1mX0fF6
	 wETiavG9/BqKt43MLzhpASDlqfof8WMjuGX4FDTbW93YqFv9Y13N0aF8rWvQNNIzib
	 hU4zY50tOUg4rKVlQONfUcSFLuBOIIdYeegm0LzWa0NhkrjGwj8DcMKTJE7p9ImCC0
	 aqa9Eb4i62J6MDOfYyZsBnGYAsvky/7m0elDAAjO9Xn/ZbmO91ZDEheb4QOj7azcuL
	 LRaSPvlRf5c4H6TR1EZCJqz+dvlMUyQcetwTFWoe7+tuub7PO/hEABiKY0THj/0mqM
	 UuvghkJWEK3Cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D8B7C47DD9
	for <ddprobe@lists.linux.dev>; Fri, 22 Mar 2024 05:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171108589644.11402.5181736615530478355.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44f1326e420d4fcf6ea3b86e7a6fb5b06e565892b1382b748a717cf9410e48b0
Date: Fri, 22 Mar 2024 05:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711085896
