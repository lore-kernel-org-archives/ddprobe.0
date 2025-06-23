Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BC1E1E5B90
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750660794; cv=none; b=EYouI+4sEiJO9Jz0+E8rTqJdwHH5BdsZLwcpnerPUFPkLvJG74fGO4AH+ruMGjeivaMeMcM0zIpQd3dyNMW4oscuV/qeXYS6Fa8HybUK+2rwjOHYhVBAwIVINKVe+ikFozWBIxXA3CQN3kn5hkKjJWf2WH1vweI7tW296BSgx/M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750660794; c=relaxed/simple;
	bh=orS/XB46yMyQ+ntpenzKGHlaSikjbvZ1fklveES93KE=;
	h=To:Subject:From:Message-Id:Date; b=faTDtUsoOz2dg7PYFmG4cnmkY0/e1YLIr49BMTtpBJ1kO5NLRHZLk4S0mlrvCQINoEyj7VGv16Urylkg2qMmGZbksVo3VcmNpY2RzKrrME9cmqWez9xPgYFzWRtbafKKzgtz3MWxLPv4BNCnFlA29VYcZc5BCi5eRtemC/Vif5Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P5uVNYwf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P5uVNYwf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D6C9C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750660793;
	bh=orS/XB46yMyQ+ntpenzKGHlaSikjbvZ1fklveES93KE=;
	h=To:Subject:From:Date:From;
	b=P5uVNYwfmCXpGOeodDlSNL7kUkjTWYFjL9TEPoK6g+XZ0N+sEBaYg5p4aJvbmT2iE
	 1kIkz95iOPO7jZvQTQS6DXbtC3J7a8L4LoAE2m2KOGIwEZVKj6jL4P+J/nH3oLyI5m
	 egpLIwss9aEGfiCTeFIiesCJfAKqr9ALRIWpitfLkOhWQWoGpjT46q9DnrHTdS8kkn
	 FSIPyCL6hbudsRbWWxW4wi60jief/uVvgo1jaj+bC99R/6CSh842xqEdRHLEhG1ZrJ
	 X1sIJwXE5Q+k5dkCchYRjA0d8h36Rj4IeB8Rmz7kGfgOlKVHbkAFvG8bIic2Rgtagf
	 ZljnOaLsMrRMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F500C7115B
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175066079357.11427.4089052259029201155.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2f498abc91edd504e10b1b224c4f4c15a18097bad997ddce89de16048b0dabb
Date: Mon, 23 Jun 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750660793
