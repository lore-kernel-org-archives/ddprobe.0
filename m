Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52E2726ED3B
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761920394; cv=none; b=kPCLcwzSMmQ0mgco/5GYpaaVcx0e0IwOHqqwkv+AE/Xk8rhMkrI4A6f3cEXysuA7EtyaIljROgtLNpy7H10sRZ+/iIH61ljPn3XtBOSN0cWx7dzI9VbBHaemjBq8kArgvmVJxKTtc/aPnVIUZX0FAn1saKDU4hwU3uvl40KSQno=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761920394; c=relaxed/simple;
	bh=wgyAPEgYa6FNdNPD1+Zy4z/LltIaUBuiDvhVVRRrbUg=;
	h=To:Subject:From:Message-Id:Date; b=iHYxIxjckdieoY1m9zqboZuvj/LTJ6UKeDPFtZVxpq+TJ50D1nveyYDgNTO0xEwWdpVdSzTZdxoj1WD/+DgfgysgbIxILSIA9z5DO84LCT8YyObeVkKJBFq9FdKlEZdPdU9oJuvqB8HVzbg+GCJxq1GHOzQ+B7jF76MaftLfvoc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EKEVKWU7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EKEVKWU7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABD35C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761920393;
	bh=wgyAPEgYa6FNdNPD1+Zy4z/LltIaUBuiDvhVVRRrbUg=;
	h=To:Subject:From:Date:From;
	b=EKEVKWU72eWWE5X4G1KtUj1N5IBR74EEPAhEd3nEzo4db3oXxScqakdxJs+/CNwxF
	 zIfVTjJDQs4RBMT3cb0Vv49a+jLq8CdSEDIQ9F6gfWux+2ObSMszLc+8fRMz738w3n
	 k/a14RFCQtaWJM/f/yja+nIFwzwH/Z5eY8qJJ1Ufmx3co1TKoei//ob74xmSdujnfP
	 21q+DC9lXMPUI0XZU79glX9p3ZTU3JH3DoprCa+5c+4HTTYG1SHIs5WsomghPSjke4
	 A5MXTltCAjXg0kd8vi2pAjJKXVC16+3WdqPRYErupZZ3Vo+rdYj+CBfzvKEVpw9r21
	 dqgyHrSN0+mMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97AF9CCF9FE
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176192039361.31962.11819049510479569970.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d421838fb95c9bc29bb3d516843ad5beff10acb7da063df203772a589aa1d2f3
Date: Fri, 31 Oct 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761920393
