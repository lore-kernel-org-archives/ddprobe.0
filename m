Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36F621A4F05
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 19:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723578954; cv=none; b=RqKxdoJqcH17rCjJOT/+mXdaN03BfarIYMh9gV7ENxn5tmqJH17HuIvKuxYSmqz44NF+DptSAfcS/+BTB/UpWBQtmWdH2SAoRo3ep4BLsbQf7lcM0uv29x8WJczzDsE4jinDuCXBapsCPey8JqWhdLhffzbmTPCYX4U5fDaEUOA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723578954; c=relaxed/simple;
	bh=NfiZxSSUYa/s1EZn0pqcM3gALX5RnxcLiobY/I8T7eQ=;
	h=To:Subject:From:Message-Id:Date; b=BYM6VmPhHZey00guhKYA5zNz4Ax24ctBreomfFbdgPxA1HEQ/kjCf2mw9ZXXyeoQ/Ll2juCEpi/nN9MAcFYUzGlbZCb3o+TOJ0Wj1Qrip64anLLMdb1xBZkNFuoyt4ecyo/tYCDr4umkp4lQoCEwb2o3JtnmNdY4oQOHSKtppxQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eMmv+7FU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eMmv+7FU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACD0EC32782
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 19:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723578953;
	bh=NfiZxSSUYa/s1EZn0pqcM3gALX5RnxcLiobY/I8T7eQ=;
	h=To:Subject:From:Date:From;
	b=eMmv+7FUMlloz802NraIihZvPufkAGGF0fnOB3sPgX9oXZ2Z7BZR5Ec0S8OdJXzfk
	 f+Fy4WB2RY6FzOPdLOzQLPXgr2dgICiOjUJB0K11nsz0P8EkJq8JWKWHn16oosw7iF
	 rs6btX9UIHteuKQRMx9pjZkC8K2TAmaBjXmk5BZ1W30fcuggVapfGTRYvAkxeiWmTA
	 1Uqq30TkiNbE/1SOVn4//6mdz6O1k8SVHgbzE8hyvOm968/Fgby2R/nqoNPOO0185h
	 p133VfprhYr07mapRGTj/hp4FWEosfKyuRJtIiVvRdtQuxdl+9ON/tiwzFCzIWO2UQ
	 lf9GfdXaDIhHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9822EC52D7D
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 19:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172357895361.30832.12220295354716751376.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43448ea8755fc54b56c78d81dbdb5e9768259d1b3c9dca95f65bb7e63e96e980
Date: Tue, 13 Aug 2024 19:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723578953
