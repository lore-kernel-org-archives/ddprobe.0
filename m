Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19824263C9F
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 22:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776897454; cv=none; b=sjD3e1pFfSsR5k7EwiZrR6F3r2OEBwODbHUudoXh6yWFlK6qKLqr8Bwa1bJRWyb+Fm+bk+4fagEbFAFyHv63vkjwxr1n9TMvQixHKoexogbKmHzxdg4D+k3sIN5jxBsj3unGRyyqMYtPLRbyrGVUqc2CMy0130M1eug93IVMHQ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776897454; c=relaxed/simple;
	bh=Czad5Hhz5A4dHwhaSiwKKUeJfftA0JJf0P87+7BPpu0=;
	h=To:Subject:From:Message-Id:Date; b=VJbWCEJIxpSkM0yu3dAgAfJjitxDwlweV8ZOpVHok1/dmYEriGdtw8E0G5mf+wISCf/DGkx7rVhx5+G3uc2E7QNwh96QSBBljPEfmCgruJkyxIRWgb34bWMQMnP/b2Tysz+QKngHdbsfVXUopcMnuPBvQsyiZdGXXyTJP9wNFdA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P5I9QUzF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P5I9QUzF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C131EC19425
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 22:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776897453;
	bh=Czad5Hhz5A4dHwhaSiwKKUeJfftA0JJf0P87+7BPpu0=;
	h=To:Subject:From:Date:From;
	b=P5I9QUzFpUKlzEa98y6T3GmiWPWjciIrQoO87k+7Sn8zF+hsXEfu53q3CtCG8VT87
	 dlAWJt1hJNxY66ChpgyTmjyImnLsQt4AiIhZ+034b1IKXT6ynHYqSVI9gHYo2wvCko
	 hnnJAmDmWg7DCRLv3utH0/EzwYHVrs3TA68awDuxe8v8vPGHtFDRwTdMQ40zeELTgE
	 73dc8mROpbBYl4Rf6AQFSqlH7eCo8E0eGWXzJwkNSo5Xo9KWcMff8H6J5HYSU39imY
	 4FXGAJ0j/vURHK5VE/UPXGCa0+aMiQBkTg+El+WwLwuq3P/DCI8ZxfPwWuD+h6qsAe
	 l19lfJ8Pn4DQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFA30F9EDF9
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 22:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177689745368.6722.4144089777782506368.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c561dcb5a657341336d8e201955d07ca3456732459413e658893735e17be7b2
Date: Wed, 22 Apr 2026 22:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776897453
