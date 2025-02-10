Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C9512F22
	for <ddprobe@lists.linux.dev>; Mon, 10 Feb 2025 07:45:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739173554; cv=none; b=Wip/rqC+f3aoDe4vJJzCqEWFW1NIP9MwakXlQhhu6MEtWa/jUtTfOWmydPcGc7eJW+DUY7OE+4wc6RCMf3HJjRE43j7t3c2NatsOckW/xL5XDigCxueRUfv2Jogqs1OeDtaLuMj2L3d3QLNjnfJ30a9fAbX/d6JOiFE1PvE5gz0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739173554; c=relaxed/simple;
	bh=eZJWdUc/DOfknWBnaqoEXCQhKfw8X/bIfUEQY9fhvo0=;
	h=To:Subject:From:Message-Id:Date; b=h0Dwvwd0721sqmi6WI8BwCijsQyrnVKTJz7FTT7HItj9dQSCe6Hh8R8IIyvm36LRfUBugUJ0r4HFo4m+ri05ucVNWo8HIb0THP/Tmye1zQEd+YTvFf0PNL8qVoy/pjtVqdj2aJp7NemFXCH/8Jdk+pz5tf2Dbd/oUwMjiAy3SXE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nqvl8CJA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nqvl8CJA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0BB23C4CED1
	for <ddprobe@lists.linux.dev>; Mon, 10 Feb 2025 07:45:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739173554;
	bh=eZJWdUc/DOfknWBnaqoEXCQhKfw8X/bIfUEQY9fhvo0=;
	h=To:Subject:From:Date:From;
	b=Nqvl8CJAfx9+jZKRFU9WcEm4TKiKgYvr1xRek/kkS16JD3E80mKTjshs7q0PJsdza
	 UNfMsk9WTxc4osFvo2+gg4xDqNTGM72618m3P9+DXsaCKgihFbhhDQA9JPzOkhMYy5
	 xXQ9PuQETs4oPfVB+a2vENqYSUa89f8xB+KAKMM22LNtYJXBMkCf6kDesaOdEgSoAf
	 RddW+r3x9DpvJyARZN6f/MYL/gRGn6tHS6A/3/AqWqxf7uhAJa6tG2Nrc7VVfkPVf4
	 ljChc5rZvwqgF7XhumI2Pllgw6UN0nA1lijIJbbh0Ytjh/1mi9zA1RA4w1dYxrL3S8
	 5bJVpRdFeQuQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3827C02198
	for <ddprobe@lists.linux.dev>; Mon, 10 Feb 2025 07:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173917355372.9823.93526135700578001.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46df918a44fe8cabcc37ca4b242fac5ecb68477764f176ba3fdec4a51a74b1a9
Date: Mon, 10 Feb 2025 07:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739173553
