Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A1242EC0B2
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 19:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764270774; cv=none; b=ZEghikNJxIRr0IYjoEx2oshiYYGirsr7xKnuYBbSNZAiw/Qv5Lz+uBKEVPcHIaq0DEKrhdWtMkogWUi0bVsnB0cSuvygXIWJuC/dob5GsNvlf1EqahblzTPAyskiJBJjlv77Bxw5v5Lt3qPyuHNYXrJ1eTyBSnZjaU5f2HBSFjU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764270774; c=relaxed/simple;
	bh=D9Pybpb09zkxfjMxGe+R9kxZ17ygQ5egvt0PvSBrf2Q=;
	h=To:Subject:From:Message-Id:Date; b=jS+8Ot4Ply5GLD1rSF9aRXL2dgR7eOmYISe4mMVhybbrgmTf8xvknrwISGbXNwhVQFMSGfbmkVIrVfuC5qyJT9QYSADlJnX2eBSYKaXRIMZ98GaBb8TF8RWW3nJsHKHI8eMqZkZk2PIclKpv5UGiO9dqY/tc4/zaIYplxauSfnc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HFq+QzxC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HFq+QzxC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4838C4CEF8
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 19:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764270773;
	bh=D9Pybpb09zkxfjMxGe+R9kxZ17ygQ5egvt0PvSBrf2Q=;
	h=To:Subject:From:Date:From;
	b=HFq+QzxCDwl3xLr+9mpdUo+7EDcSCSBkRYW+pMIde2sCbSlT05cZ6FNEq4U1PyuW/
	 LFBcLYC2yPsbseelPmVWYO+tPVugcA3btHaM9i2kZsayH6ZZqb8FPkGZrfIctDgVFS
	 TDGel60PfEBI6Nb7hN38DSqMndDxz/UJR6q6sNE5PgRnKin8IbHyDr6Jy7tBnx8tOG
	 NFQkhl1OuvamfkxQMV52pknQX2YEEA26Vz7bKsQPEkU+9W+SJDjCN2dwWqaA7Cp+uD
	 NwfhxRdk5P7EkQsgBAqKBEywaAlzD1E5P9s8F6v+bX/IzLpNGNppjrN0Dn12xaSVVG
	 Chzi1tC1WEUig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93638D111A8
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 19:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176427077358.16425.4565295159174190922.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74299442d0110b42ede379b24b80e24de94fdce713c8ee5ee1082f1fd4641250
Date: Thu, 27 Nov 2025 19:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764270773
