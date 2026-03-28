Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EFC7288530
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 10:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774692894; cv=none; b=L3B43T+scPXfDrUkORVPLJbiuC2av0TO8GQk3/CGSuqoMGk1Iq6A6zhaaMyN0SIsQNHk8+fD1Yky+tfhZAu7GwEf5wvtGVoLXcKN8u5OFClNz1M/Bppn4YndSqK1ppf7vuepiIR8vBzg2xlrhPKCfw4OjeIAZWQWf7+yfyLDkz0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774692894; c=relaxed/simple;
	bh=Yo7dSdvNXufggNOy5ckknWU4aQhNHyPp95lZIIbdHHU=;
	h=To:Subject:From:Message-Id:Date; b=D4UMaLtpte/OYq+WcuBpzQvAfC9nZF1d/oyVHrXVnY2v3w2CmRp4uEWld5DkmzNybZXUuoIzSDl01ziMNDBKAoJsT0YLAUZg/9SxpH6WPBqCbvfav5eoXYyuox6wgZ/I9TozK+PGHbMsjY4/RDZnsapk1CSxPKqS5lRGo4i1H+w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NiT/Newp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NiT/Newp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A973CC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 10:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774692893;
	bh=Yo7dSdvNXufggNOy5ckknWU4aQhNHyPp95lZIIbdHHU=;
	h=To:Subject:From:Date:From;
	b=NiT/NewprUP4OkdQdUtFanf1JHi1b8Nm0wJ0vYs7L6xOxC8h3nRC/JEaqfikShAPi
	 c4ePDf+zYqZNGuFDkgmhCjgIcvZdKw80QJQrRTR0kb3esar2cc/4BN8Ho+Q4VGZWSP
	 kkFWrG727MqDHUcLXulY7xOzxYlMIiOXQqrU9xeqiHbwdOCCBeSOxPfuYy/SypGUOr
	 t3o23KEajC8A8FRsC9263+f73qMR6/i8TUbSbPY2uumNikffF0QhvzcUXhUadT6TlE
	 rcYZITErVZFb5QqZOo132+y+KStm00bkU7ALauT1NF6kNO660XQzkO8kCerR5oa5TY
	 vJtbKg9GAJeEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96FDB10F3DE2
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 10:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177469289358.18440.17461642895901740596.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe4f5e889c38edc08dee8c0287b14718da6ee2fcbdb189c9d0b3409a58b0a3ee
Date: Sat, 28 Mar 2026 10:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774692893
