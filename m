Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15B5E302CC9
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762510794; cv=none; b=SbHl3cDT7otAiSLSM2f1jd1w2sV6dbxUUzWza7C6BeIi1WUH4qF4ZnjTZnQ38vGvWKBPqQG3aD3ftED8rc+u/YJPjeoopvihA0emG60nohjoesV6hXRm7QnP3Y3NduzoiJ9kx4SfhR4/BoEYrmbfS4eDqrIFUdN+E3fLUOhTzhQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762510794; c=relaxed/simple;
	bh=aW6A5v0MNRODu5JEhuD0GbHpXXaDe4XpMXPXvrEweMw=;
	h=To:Subject:From:Message-Id:Date; b=kkVsaShJg7jbq/IZaguR8EU3EfnDfruR145iUj9rWTz1aOPCgLpwR2Qxo3oZi9QW7OQHR0azOml4SudQtGNFkZk0TGp8iptE8eNa2Atb8paB9QSp5W9W5OPkl++VhuaCdngUpwmgAoAdPTnDJx9o3a5uquNrJOio8f97/bU89Z0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ccvkaJv2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ccvkaJv2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F524C19423
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762510793;
	bh=aW6A5v0MNRODu5JEhuD0GbHpXXaDe4XpMXPXvrEweMw=;
	h=To:Subject:From:Date:From;
	b=ccvkaJv27UwS5PBEdA7tUAWJi+1h6TJ3uyL14PA2xfwAy+og/dLOxuXKoG59tB56f
	 rp3MnzJzPrBICOyvWl96EXFfdp3unlYbHinQu+WtwI4tCaiSTH1rVHfREIH+97ttwb
	 N8hy0glJD/NfrksS/S+hS+pLfzKE54NjG4fS19ZoTW8QtG1xd2BL7Pz1arFvSLMehv
	 svWNUkMcknzF9EFChZBdczzGdLz1EYdUHyHOVYLtKUJdbbomFcsHBTNIHqWuMCTz0P
	 J4aBqJeK4FOBmRWgWWaGvJEomTJL0Wd3nwRb78O6n4K0MbKOBuioeXq6AkRDb+T4qn
	 jDXDixjq98taA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93BEECCF9F8
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176251079359.12762.2379511155499631929.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1bebc942994a77de9eb879c11a502fec629c649d5eb2c4d72c9bccdd54f56d11
Date: Fri, 07 Nov 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762510793
