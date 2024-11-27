Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29070148FE6
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 06:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732690554; cv=none; b=SM6yWTrHpHLk+IZ5fSCgPIAG1K2E7zwzARISi73fp5a2hOn3ItlbS416sFGhUhWIbrEvjfjPqToazrkm8wcajVFYq5Np32K45QO534MfGQqxftND+WE2qRbRHXFI+meeAq+FjIL7S/kfT6pxOz2UNwgh/mbQx5kZKPP4PeENJNE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732690554; c=relaxed/simple;
	bh=SU/iU9JxGg2oyN9OtZWMRPpSF+Db8y9QIGPS4F68Xo8=;
	h=To:Subject:From:Message-Id:Date; b=Vn/f1dgsfLxyfEIV00xurwV0T+xGxBVrdfVExa3M4a19FzFu5lhAuJ84/CN0ebY718dDGaGlb9Lgp1OaE9+C+jEEFGd1395sEooY9nHZ0zAHWoPlQDHBtpbFHHrlny/y+GlggxF/wuQeGQVYVxekZlXcQdU1noJ0SCg09bPwVGg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F4u3oVPC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F4u3oVPC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5EF3C4CED2
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 06:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732690553;
	bh=SU/iU9JxGg2oyN9OtZWMRPpSF+Db8y9QIGPS4F68Xo8=;
	h=To:Subject:From:Date:From;
	b=F4u3oVPCUHcX/KDTyd7Zrp+DC71Z4rxjB5515JDiV1UgbFXe2UsWb42cVRoXirq/G
	 m4UONVhdn5WqSpCUsdUnkP7FK2H76F/xmOYNHgJM/57L2CDNaw/M9K0GVJL7yR0qTD
	 qZIvtQ8sWswzH9WUksAszdpTskZfoGGnX3iJHCQAqb5+qX2j5LDVBqc1qtMHBsEpf+
	 fgJOBO/hs6d4SyqEmdfA2vozlmVyFUuXxTbJ1MWSKcIZGxfIGe1iDeRGseDSqcdS3n
	 zPlhkxKM7wkN9ibVrcsjlZJvn0OQCka5uhZHdI4r4g92gqI6mozc/bre7e+mAWTwUE
	 1ZwO7ofKFVkAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A6B0D609A7
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 06:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173269055361.30234.13941258924545922672.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18387bc4767c1110240d6cc7fdd8515350583dd54a9e9a5098739e9d0d8450d6
Date: Wed, 27 Nov 2024 06:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732690553
