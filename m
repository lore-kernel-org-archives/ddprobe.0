Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40FA4348803
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746500994; cv=none; b=S7xz9Ba3uxAG4uA99mO5KfRXG2gAq7hwsdT30X6zTQFqiGMgF+fPuRYMu3yZ0J94EgdZUaDA2SbfoGXIToCPvIHHUR4iYhx3+bvQzhyUzZKXsUzMdYHXpyu3WqiuMU8oo5YkRAGV121wZUvG/VVKVLqXyY5mpdQLuur8B7sKZbQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746500994; c=relaxed/simple;
	bh=mbQAawdwWR1sxVLt+vdd+NnqqlmsB+0rVTfZ3ifAKQE=;
	h=To:Subject:From:Message-Id:Date; b=hs+eAoYEd25kYwbS2NOR4kAXlxx7N/2GU9IEQwNZQYHJnc46SGJ0OTffsN5xn004iZoFPE6Eu+ZnUZGjAY5KbBB4XWWGOj7yWEpHMFeCQVRo4b0NiYq9WPDUkdJTxy4oSDrqBWO02/OQ/Le37OBFXtOZlGxNARZ8/Ix/L9Dn47A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G0z7ylDS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G0z7ylDS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0C43C4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746500993;
	bh=mbQAawdwWR1sxVLt+vdd+NnqqlmsB+0rVTfZ3ifAKQE=;
	h=To:Subject:From:Date:From;
	b=G0z7ylDSWxUgzd7Gtj3TP1pNssWzHK66BhEGLay+7TeRRaIcHHus+VV8WE8bqCvba
	 4yohMwiyud/mhzincnsZTXI7DCah0UEZpzPuWUrVRgUaQNuPnwMYXmdv/LLsT9nYZH
	 qPRPvEmxnoztsuj+99f4Hg6ck0zrBrsqm9jx0XaMNi7MJCROtPP4+6+S7k0OsZHwl2
	 Sva5mrAp6+F8K0b9RK41sLnN465p851t31c6eeX3xXM1lBtaKE/vo6kNpX/09+3e6N
	 54Xx6zx5OkfUJoOWlAGiXTnvVOZoQ/BN2aWge4StgyLa7AxhevqR9JXoPMM15+laSw
	 wJIZLLC3HQ4Qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E014C3ABB6
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174650099357.9952.3333784821212190972.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 366a6dd033dcf8ad898d5733281354b66ebdb4ff54ceaa5ba9bc2c3df8819682
Date: Tue, 06 May 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746500993
