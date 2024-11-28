Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D20F847B
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 15:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732807554; cv=none; b=DJ5H0qxJezA+8DJYwB7V05EGJiAmfoLvAh/gPzThQXWMVl/UEfmdpNY/ehe62cdoznXJ+gHqtMFxUca/TRzPC8VgfGZrRjwj7sXmC1o9yJNPqMbhkFzNFKFOFJRZdVumnFRNKT6Ix+S+Jt5dDpo0Hon0fcYXGq4yMjIA+qPeD5c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732807554; c=relaxed/simple;
	bh=B5KRcPG1O+YbEE30BHAXgVGYcn/b437D/fhQNQ4XO/I=;
	h=To:Subject:From:Message-Id:Date; b=ratCPiTUrju4mDPJYuM3GSoOoq6zf1Zx5H/MioAW14ZzkHNaLDzuQz3v+vS6n+o9Jz27sUnwnFVsFdxoMLEh/xp0Cacm1fu8KhPLia9/zYXewhxr6N1qkUU3omv3in4/ExFRxGPkBYGxls1SUQoMr8ZoHzWsaMihlgnq4TB4flQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b/Oj/ONc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b/Oj/ONc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB994C4CECE
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 15:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732807553;
	bh=B5KRcPG1O+YbEE30BHAXgVGYcn/b437D/fhQNQ4XO/I=;
	h=To:Subject:From:Date:From;
	b=b/Oj/ONcNvenO7dXCJX3mmp/uENi4/+HHsj69UcxjkuXky83jdpcPje7TCaEN9mf6
	 +S/4ZP5k508BIQuimWPGsQ/CKYjb/u/qJQd7QgMNApwzvyOOlO0tvKm3NV3pSGicrA
	 yEJ2ZWukLi9iGGKje3XXGXZfel2vPP0q18FUqdWHcqfi0a6nAq4wrxt6LoyRhfMbMZ
	 2TBuTk+8m3m2o7ISqXeEQBNQ6oY3sDZ+/qj+mH4JAZpXbe6olL2iWmE0WJvYPmThPM
	 lh8nUgCL3QNtOztpHdd+ujf4+/s3bXfskJenvAyFqm5m3U9Qhq8LIYAEpQZAVcPmAD
	 xdKqAAo0yBKRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E5AD69117
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 15:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173280755358.25879.986689929450533301.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db2026e5b8c16cd47d4658665b71919a62221fc47319c95ac337668d4fb42a4b
Date: Thu, 28 Nov 2024 15:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732807553
