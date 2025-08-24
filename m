Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C016172633
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756004393; cv=none; b=oB8VGWm647rX4Le+uk9L4pjOzZnBNoKcWejga7AE4nXs8qDGQ0zHF2TNQrhnWvKIhgSAIdbBubiNK1p8jrTMycLPd2i5CLT9bwBTGMIFWhzAp1E5I07s7qJQrDpt7O1yMc0LPTFAyz423PFFq/q43zi08iIltKpXS8xL5u/VgKc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756004393; c=relaxed/simple;
	bh=3HSvdHUiUrfMEQ7Z6gmAeDjW2Hzs9mTK+0TjSzqUOBY=;
	h=To:Subject:From:Message-Id:Date; b=tdVAh5/zT8RfMjSmJbw8BgDnQprgtdUavCkee5DI4j2Jlj0O+BdqVcJzJWsNgECnM4Lqhz/LyT8fHqfF6YHIAdQpVWSUGtoCaewrBGLAA7+kIUSG8WG4fHDeHZtvKfn37pX3ewLbFUJx+HtIuD2N531CvDSp8kiafvSG4Ac+n+g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ebzogCME; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ebzogCME"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E8FEC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756004393;
	bh=3HSvdHUiUrfMEQ7Z6gmAeDjW2Hzs9mTK+0TjSzqUOBY=;
	h=To:Subject:From:Date:From;
	b=ebzogCMEoE643BmQK5ugQ14FU+Gvh+RuoaJ+uGImOdNwpQ9oaqc+7d/0jP1QhIKsK
	 jRidn8XilxWs5fzxIPzYlK82sjZaB4Ec44pUFuNftgzOsxsJC1zMGhVdYcLrRxnSOO
	 UJOBVS4eXkMMRr/vrmOyY5pqt7WfNGj7U88eXter2XSAg8BxY7nNUfuAkbWZUM8m60
	 JGHaM4a2/2I75tl4/F3K7/5JQQGg9IFcu/G+YlklLKQReQhHw2ud3BVXQ7iU/yDm6Y
	 1nu+lVc4Nj17vt3XtYChnY0aHKfGe8KFwZhQ4KXG0HPvj4xsTnUFVCJS3wyb99CAeu
	 rO5Jahe80FbDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F247CA0EFA
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175600439357.17048.17758816660650489918.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa3717642637c9f87979b34ed897b00c254186cb3aa830ef795573da307cafc9
Date: Sun, 24 Aug 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756004393
