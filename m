Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A43519CD03
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 14:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778422835; cv=none; b=fbgZVBwoc6OgQAZJ69sZ7eY4gka6n9kNRFINoAphuqqJbJTvVs0ORXSs3gczDmA+4+UmjcvNm2eZi6WQyYyZwDqQS7OdrfZBCrZNffbkiCIZbuLoYL4KtvPZpgSmWkzjzdRi0XZKCfDJpj/G6BlNqqnXM1baS3duUs+OcmbaZt4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778422835; c=relaxed/simple;
	bh=KtaSTYBbEYV/UaXrBBa55wVvqXBVF+8q66WpKF/6jnU=;
	h=To:Subject:From:Message-Id:Date; b=lralbPOSIh4BGmaqppMA1AOrJIlqbKeumMN6319URlwRua9dWJU40h0q8wsPXBhD+PzW4HHGUQtrITWC3a0MpzhBc3TYoY8IHC0YeR7UDhMULNyzqShDvlmVxFFYj5mJHoHknuyakWhwFN87C7Y2MzSbTeTc9a5YXg3j8irkAME=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EbvtOIbk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EbvtOIbk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C39F0C2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 14:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778422834;
	bh=KtaSTYBbEYV/UaXrBBa55wVvqXBVF+8q66WpKF/6jnU=;
	h=To:Subject:From:Date:From;
	b=EbvtOIbkCScEE/ipfdfypmhj9CNDOrer/V3++5IhWtBq43uLgOlPkm90sls5HS6hk
	 wz/M78iEHFL9biLejMR/iKpTaPwd5uYNCFl3KRnVg4dL59H575tzZxMeIZzXIqRwXe
	 NcI56d5oLNI/AwDbfmsQzwakvBzZIo9GWas7jQavEIQj73pXwPnfGjPhSLiQ5EwohC
	 axXi6EEQpAXXa6/h482zMNKoOZXWM8VgzigzPQ/NU7jc9LPnmMkGmUGZLdBopj3aGv
	 mgXC8LfUJGxr0tP5mlFGwaJbxlTv3xfDBImOd1YoeySFhChdv+kMBWrylCLBFYHKxi
	 PK+nJi7Gh4CYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFE3ECD3427
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 14:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177842283368.23349.14321225084990771442.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5282b5bf2e5b5523f4b1674aaf82c604f9068bd41fa865fc91299aa018f79b30
Date: Sun, 10 May 2026 14:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778422833
