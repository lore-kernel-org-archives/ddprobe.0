Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DE778C0B
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744695594; cv=none; b=DDhwkEhMRiGdp30mYnVhmV9QsLcso5SqYz2/bVmKXA1u2kdkbd4fSnjiTbruuLseEtvdicvbZLpuSzD2r+jRRn5qsk9mZ/Ai8nuOwLmsfiMFHLkBgdwlDIl7WUmBYm57/+FhUkn1WgysC5XKhwQcgZtNJRS5TongxHIXzLDb5NE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744695594; c=relaxed/simple;
	bh=hsKLb8JqNwoYUzJDO33vjq7IwQo0XRcQZcQK5lh3+qw=;
	h=To:Subject:From:Message-Id:Date; b=MQhdYe1cJ5Vg07QwbK7bA7k7ATp6guM+mSyDRHfDK7MtO0/aHwgg5o/d5wd2GuOuLnVMYsvD87/+l8SQjqtLYRL970L08AHpKSH/1LD1S1uEqmdxsghWhGjq1H+yCEM4vT32xnZxWyJ+l/zOVzsC+utsnlmtUePqwoqfMRMp4CU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JIWxdemw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JIWxdemw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A942AC4CEE5
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744695593;
	bh=hsKLb8JqNwoYUzJDO33vjq7IwQo0XRcQZcQK5lh3+qw=;
	h=To:Subject:From:Date:From;
	b=JIWxdemwDxZxheE3cURxiGrDr9tJvOF41qlUFcTSxkOxQ6v25BguZswuAVXnbJWKG
	 2AA9Lbe1WPj7MBFE7IPloPhXwxpi6++wjXfnkRTqDmyqaATtkE3ZEo2bZ6L4v4BhV0
	 qa+KEN8hKjmyj3C1kVBUaNB3C4z2gpmv6UyIqrxELiXK1y0BcgFKpqfttDAmwmx3Q3
	 GPO1YZdhJgTF+sY3QcXeqmqYE1osyrnk7A/8f+NzjBNcagRA/5eCU4zUIceismX2ZI
	 SLhMNYnFipEgqsAXnmtKMeDuXG42raeC+56CykkVmDGC7ktgZQ8fCDEKQBu/Nt0cxa
	 F9/J4p4x6AKeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AA91C369B8
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174469559362.22496.3314620594593904879.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0a189323f16ef32467a30fa76852f19537b1a1dcfd608900ccb0282aaf93eb4
Date: Tue, 15 Apr 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744695593
