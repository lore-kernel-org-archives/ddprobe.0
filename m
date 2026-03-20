Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 229A62EC0AE
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 22:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774046094; cv=none; b=rFl5CHXX6wLGFLUW7sRahYOCCAOKHiXkCk1dQJKterBYSfCAkJs6rTFElwUwQI88gsTpG6Q5y4hzqZcxQCYbGigR7Sa1o2euvmvFzaOx2J7cmUTcuHf04GzwCogAByGCieyR6iXLAMJ9tbCuHPFlrVwjGV4/O0XrrsYPc7Fzi0M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774046094; c=relaxed/simple;
	bh=scq65PqQ+DVHbhDi0VnoUPbi/7VcziaDe6F/zjK06vE=;
	h=To:Subject:From:Message-Id:Date; b=mBCEAOgdGvze/zgewePiIi9Kyb/dGuRZ15syLPKb+w4goDPWn7Q1ifQ8myFPi7I5rwvO5n2GIW7g8H88AkEzgp1EO4AgJoLuA84BS4mt6XiSc+2Vx/d2tGBlxJ9VQljxXSptf/WGWZuigMMFwOX1WLRa95zzLPix+TaDbccxdSg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L9pWtSQq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L9pWtSQq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7D67C2BC87
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 22:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774046093;
	bh=scq65PqQ+DVHbhDi0VnoUPbi/7VcziaDe6F/zjK06vE=;
	h=To:Subject:From:Date:From;
	b=L9pWtSQq5zZjOwAk9uNIKap9kApBcYxbT5055pMf5b/zsd+mMkWnZ9nRPId/P07h2
	 CDRsBXPVx36wbYJSoDJypRqV+17UhBmOhRQl+seAx+gSrOSje4LLtj0fcSeWH9/Onv
	 3XFu9mgEK6QtwUGhmm4xNhoxvzd/2FXdNvjVYNTUaqXfR9v/egHpZ9+v8YpygzuQh6
	 w4a6Trfmo0YGmvHrtANVoqfUQZn8VqEuWz/XKXIBe/qYvT+EBe0i6riaZQo80zkqu6
	 2J70qxHVYB8+YSckNbuh6R1GX09URdJ64m+0tkCUPPcXPjyPSYq+kB9sEEGFqoG3Vr
	 01HFp3xwobXgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91FB41099B4A
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 22:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177404609357.4279.722342234057214965.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ec66f57e83dadb56437e166ed77a632babfd55f004a9732b851b4ffba763067
Date: Fri, 20 Mar 2026 22:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774046093
