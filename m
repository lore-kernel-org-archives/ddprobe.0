Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AE5C28FC
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 05:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733548554; cv=none; b=u+H7+qtKCNJmxdYakQddslS0tJihEpXU8LfFc4jH+B+hqei0eKMWXnokSSX5UZEo6c/8xzOAPsfvoOZIehSUBX77jeBbcrc+HCR7xiSpDY5kGplnWNdx2pBKsVRBJ9Ag0pyCVbNQIclnHmxo3rEjSJKIV2Lf2yh8sdxt2YehcZM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733548554; c=relaxed/simple;
	bh=WZY8qAyOFSIHlZ54yg9zVDIx5N6vDhyWxqFKH94oUUM=;
	h=To:Subject:From:Message-Id:Date; b=DNAp8Yj2u0NCiV4ThPTAB5LoPs5UqxCMQqbyJ7a7pE3J3Gd00J+SUjFlsiv8dMSpiZUu2Vg5Icq7WetnvNU1sWLowm2/BjL891nSLsJxOZz5ZiUj2lc4tXmFR04V19+U2u+q7szNQuiRk8ASK+ftDh5YBRxIiNCg9kGl9M+h550=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kITShRkz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kITShRkz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC27BC4CECD
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 05:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733548553;
	bh=WZY8qAyOFSIHlZ54yg9zVDIx5N6vDhyWxqFKH94oUUM=;
	h=To:Subject:From:Date:From;
	b=kITShRkzFF8S/XS+EpG45aIRrhk4FNnZHdW8hzrG23uqi5mJPoJ1n8V9DUTXCUeee
	 6WNGf8XtRpYgmUQNUg3+2Rb4wVsCiUiGvrCDUuL1983mfgP0bjTafXPXK3bJHe8pXJ
	 OAldsvX00U1GdJpZxJiTYGkm9v2R0CV1DtDr+i6ks3vqeIq4vmlrjMVbFPuefKl2rg
	 LqwmSob6FAZ1ZlrSEHJe7irHD+fbMEUGskab9d2C0V29UhUYQeTE69lTd9MECqApv9
	 x2Bvo3Nootbvc400E/2WP7zDPgZZ/YToJ1tnRGLqDZARpXIGlY/pfpPHz6f+24STpi
	 AxpMa/XowXhvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE7EE7716E
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 05:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173354855357.17631.15960547585713665316.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 273872d9984330c4a35e7dc44d726db8341dab03a88bece578ba72b54e244205
Date: Sat, 07 Dec 2024 05:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733548553
