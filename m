Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AFE019CC39
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742117994; cv=none; b=Noso83NhLaOFQy22ZJswww7ztRkyQV1URm51H0BFeQUJe4BaqfRpmu9O/jTkr7RKN521VzaQ6Z7bz2uSm00n3SBfHHFrz4l3SOQlEh/ptWDJ/K1jdt1x35337KDrth4XBz4VGf3wVdJTK3w9hEgXCYgI9GKVHrqLQptgywLjIg8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742117994; c=relaxed/simple;
	bh=+PkZjD/twwKPs4hfV7AY9y/wCfcX5u3Jrf9/9cTHMgQ=;
	h=To:Subject:From:Message-Id:Date; b=r8z6IPJ5RpUeVOzWabdAhCssD6ZuRGkhq8FsiVb7jML4yh3aLHnb4p+rGX8JcsZY/LLkpZYFKQvd9F5HJQllWZHPl8koZJpy8bS0bLVFJJbPHC4FVlrnG/2e7qQKfyC5HeGX0hC6l1edeeEJIukyvIfIJUyvPLplvvbwI7meZz0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P0DoGvu1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P0DoGvu1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8F2AC4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742117993;
	bh=+PkZjD/twwKPs4hfV7AY9y/wCfcX5u3Jrf9/9cTHMgQ=;
	h=To:Subject:From:Date:From;
	b=P0DoGvu1lL9PvjS7UWjedAG1exBIuoGZicVJKqnWdq3Z3WqiQM4n3QpeSoUJCBisf
	 1lFvbd0rxAfyGGVLnedhnznYTnnNhzlteQyaY1c39sFwjz8r0kBu7wzjN8ul3wCk58
	 ByQ+nnoN10TTM/UJB4hmq6ZqW5IDy1D8fOe1aIW7l7G4hRlZFqo8mbw4zkQ+lFN8Kp
	 d3bZUBqlrIEZ7sSjqin1Aqq7LszwYvqkC4fUnEUrrkhE3hulPsLoUT7m9jn4Z9Z6aF
	 RbHSGYaNEuPKrzRpYAYT1O1pWgPH8VgrhlGFEvojQ2hHbUJA8r2UMGNwC4M6WZwno7
	 dDuEfBUMJLXaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1DADC282DE
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174211799364.8457.4621968643134414786.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d5a133af9649885f415c0b7cb60e7f3d8d513ee67b7b9c7fa18d58f29df107a
Date: Sun, 16 Mar 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742117993
