Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 750292C95
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 05:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719121943; cv=none; b=DfwwLfdtGd4R6TXp+HB1XahjNiNkjP5VZFr1j5x+8A++4hjHucSpLfUP8NBjY6sqsqVs6mx/6bCbTMHWzP8tWa52cfEjCq5vi7Y5lg6j7ZygWu9mpk49qPmLqvJ1G2F6fppuHoTw9LkdIRaOcHrgRgM6EIB7lkNSQXcwGhQZSrQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719121943; c=relaxed/simple;
	bh=1iOeKPK/azcZDCHi+0qWxzRq47q+HshBUF/GqUMlI+o=;
	h=To:Subject:From:Message-Id:Date; b=S35EPgdy8A+h1XV/FemPFKTDn2yrZW4BUSfNbGD+FmIcGM87/JvRHY1nPcFmhRBLtalHFYJtFu6co43/4xbk2sSYUJ3I+clKMQwEFYuPPI2E1dwoFSZLbgI7usKG6TUie7cgT4Si78xw6s9Cbk6/P/iFzj8JJL8fyKziGp+kafw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XbvlFNs/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XbvlFNs/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E85D4C2BD10
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 05:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719121942;
	bh=1iOeKPK/azcZDCHi+0qWxzRq47q+HshBUF/GqUMlI+o=;
	h=To:Subject:From:Date:From;
	b=XbvlFNs/uEsY3HrE6L4CHNcv60E5vchDIDU0DjTwUTBfsRFCDNu/CiDOIMto3OL20
	 QbN8LAbeAnnOsfNrw+xkCzSJpI3/d1/AqLSyWQ3N85qS2R3B4dS9j5BvdLoNNZRwA9
	 IDIkCLpHsJ9qdSbrXZAU28XQLyXttRTOl1xm4HqtGez/wfLt74sDgRyQiT6Bd4AyvV
	 O+Z/vm0e73jg1fkCWjHVRjySrMt0Xf5kHipQxe2iE4uXWIywTysHXHdHlRd4GLXwfs
	 EIZxZLK7EVl5VsfTkPFuJgn7RdBLJZ+eN9H6vjJWx/EZwH/AlSoxBfglLcyI9+HKXf
	 6AHkX7KkUzKMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D92ECC27C4F
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 05:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171912194283.21770.18444133184626410594.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b9ad8a47886bdb563be0c48439246b405907b977b644c9fb9a83cdb69ff99c3
Date: Sun, 23 Jun 2024 05:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719121942
