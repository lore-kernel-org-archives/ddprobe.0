Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42D0238D
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 00:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783037314; cv=none; b=OwCsj0wDN7CWmT35cPzeqLc1+ekldSld8ajWYH7lVPmGvrFnM42AnyrrGR7tkYlwPSVylXZtDhrKEgHExK4I9PjBYFlar8dM6GAhMXpdOUBgjQSMNM0M1WxtDD6m6dYjXSBc2Ks0d/j5P3amfOJmiq7SoRlUmvVQaB1jiivTrsI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783037314; c=relaxed/simple;
	bh=i5Vj6npqtI6xW8nf0aK5Ufe7m8j3ObGjNZiDdVAkrzg=;
	h=To:Subject:From:Message-Id:Date; b=Z3WPwBvnHVaXadbdmZ/MTY+V8ti09TBZVw/1KoJMCKfbhihm8+A1ID48SLyKxLTFx9VCfcL1D7IePHNml5tmbqlTgnrFaHoCni64qYcaq5nvpJZkwyR97bsHf8YFsjGtj5UBIfl5OwknTkw+rx5LPvk/6NTg2qg7JvMzEfzqVhY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lEZfNbc+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lEZfNbc+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1288C19425
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 00:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783037313;
	bh=i5Vj6npqtI6xW8nf0aK5Ufe7m8j3ObGjNZiDdVAkrzg=;
	h=To:Subject:From:Date:From;
	b=lEZfNbc+so+lQRbRII4tQQvF6rh53190NVwKchabqt7aP8TZ55BiSuzfTeCScDCjl
	 hlWYhmSHn+FPsc40JJe+v1ZeMQV6ytssyBKPW77hYYGm1bfVBsQ3Zi8HUCWbxF3Rdk
	 Jm1ApfCEcqHAUDBgehyQHcgkj3XONjPvJnZ+r/zWJgOXFC5W9eaigsYhpb4LQ2/KdF
	 xAgFaIJLQOWM3I2lhJqTe2y7hqG/iYU7p+D/EsFzt3YCIpSaK/WXW5vZKkb6QnhQY8
	 2jH11N+P+UEeMfiHf87dkTc22XewOnVLCMFCr3+VSC4CyCMOhNenrMRCLkoeQPnXXu
	 TN/RjWlPOgxqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABF51C43458
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 00:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178303731369.23372.15828752302944360853.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78e4a6fd377468c043095cf667e6e67ece331ff7ad734055600efac472313faf
Date: Fri, 03 Jul 2026 00:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783037313
