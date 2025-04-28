Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BD9327EC99
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745857795; cv=none; b=JSS3cvOpt/B1OoIgTz3qV9KCI8DTjcwTT7OX8IZtpeTADkyxNAdx0YJJ/XHJ5j12DACecWbFrT84lpw5voHKj5eEQmIAeDsc0yv4qwJHkI2pz6urN+eX/zbjRqmFrb4YFqspVpm9Gtl10vU1ohkBEB5BuuB8ckzHBltrnZhzwwc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745857795; c=relaxed/simple;
	bh=XzqEW/DQ9hIsrPPtERA9I/LAkVJnZV5FU5f3LkyIo2I=;
	h=To:Subject:From:Message-Id:Date; b=MFf9yEOfoPITJ/JV2VZOH0Jnl8f/1KcVd+o1Z+k3+LEqCfAjyV1WAzEDNf4wdYEOQg6bTTge4iiJay3Qwr2sqkO4vKqDDTkPbp8kTbav3ui3gyNguWgc5DgsnURLc1Zi4IW1cbyoh4LjCsOux/RKtgWNqJdGT+mAaXpuB/ChLSY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N3clL9gb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N3clL9gb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFD07C4CEEC
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745857793;
	bh=XzqEW/DQ9hIsrPPtERA9I/LAkVJnZV5FU5f3LkyIo2I=;
	h=To:Subject:From:Date:From;
	b=N3clL9gb1F6l3NyQ/1+w/Zlt/M1AwON0m6XjFG7eKHoAgnobJzHFZc8WaIQjuZa28
	 NwNL5/atCIKndB3lmYX0TBsDhewXs4HqarEafatc7JJ2Sxd8nNb8Cvp8lVo7xd5+O6
	 5gWnx7P8c09wlT5bvi4FYbZnZyksibWecjQdWWTrjMgtIQtjypYXKkNRXud5INynh4
	 bveN2REJj2JnNJM5qy7EsEa2nZ5KjUgcMn67AkDaeaMCLa/6PqN3bCMtPgvwy3r5fZ
	 Tl/gXhqFvqWgQiezXL3RuetgUeiyfcIcP4WjmoaeDixneAL8mo3Vbuk7nTCRhSt7pm
	 WaXSx9k379EWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F218C369D5
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174585779357.19419.9711379050512930796.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 770aca1a9b9ce178548ea5d05e05f2fa7a9a07e3f523969d2a4097314baa0c48
Date: Mon, 28 Apr 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745857793
