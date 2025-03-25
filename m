Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AA1C19ABD8
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742930994; cv=none; b=ZvEr+J08XP4OrRL2Ahwoo5uDAEfFyPsH0I4eo3HcMC4aq031Ataei4FqtZroMRRgtmq/PFd48EkwqQoZqM1udQyeWrisTR5P4ImxoytNEZttXCA3MwJoFb0k+AlGh9nFA8zERWjUk8UrWhmLGPQvE1a6fUHWhzNgvAIzt91iVoA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742930994; c=relaxed/simple;
	bh=CWJy1/xCU2ByGKFCtzO9FLX5U7KaDWrTBkDrrmHJdug=;
	h=To:Subject:From:Message-Id:Date; b=PPu78GYRvd5lk/laOwmlXGX2GC0yjJTq8xKhxow0gIsoIQavOhUPRwrY7TbpShA4LgavZGT1f6P6yX6k+NMJzjiNAoCLbFphPeMFxjAZ/xXGtGPeDDWa7HKjPxg6oXd+Jgxh1TOgu8jbF84VzQPKEdTcTbkjXIK8ZpKXtDiOkx0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FQ8+/h3r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FQ8+/h3r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB217C4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742930993;
	bh=CWJy1/xCU2ByGKFCtzO9FLX5U7KaDWrTBkDrrmHJdug=;
	h=To:Subject:From:Date:From;
	b=FQ8+/h3rP/fnTHHHHKwol9jcuCUmkIYDuWxrUil3qxydaSz5SOtPMt/yIX4r9VPch
	 tknnRJ4SSGCrq2CEAs6ZwZYKntUF7uZIy2GSKMhNqrla7qBfLGH6hr+mFLEYhFCU30
	 P9p5OeOeRX2hMeiKbsJGD/l6irtjzNQMURHOyYiVccFjwR8unxnIcOlzEvkRXdjWwi
	 rzEAIc0ft0U9DzjXCjSdi8yE4SAZ5kej3u63rm4UfmF4nA+2iF5dt8iToqGIBKeG4S
	 mWJ6/azZqXJ1Ql7wECpjA3AybpRdNKoUfQtmg0RnRnVmKxzhq8p6m22y6OQZFK/LsI
	 izF0jIWRkhwMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E9BC36008
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174293099360.645.11814553421197902639.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30666a4c5ee86fe57663d568407fdf62011118b11fd01ecde2a08a976882dbec
Date: Tue, 25 Mar 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742930993
