Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 346291842
	for <ddprobe@lists.linux.dev>; Wed, 25 Jan 2023 09:33:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3955C433EF
	for <ddprobe@lists.linux.dev>; Wed, 25 Jan 2023 09:33:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674639185;
	bh=aOtTnKCAoxyCxTPiHO++vcFRMIqVNqbEYu8A3H7wPlo=;
	h=To:Subject:From:Date:From;
	b=DSzJYgOmXCNBGJI2eY9m81k2xHEdc9TdK3PpM3EiI0+2sX8pc3E38O8bFOGhDHC2G
	 Yk77d9WgOJf0WE2NAfkvEGbOvXQjEKo9HlueSAtyKCf+0Dy1U3ul9BNunt9Z4tYh6/
	 kOnOqYX/AtXw3aWXTzNKG4Yd9n6xqOHHP7szVJvdUWx3trG+6/0jK6Nc9McyGox062
	 +XTdRos79R49HMCAtw2MA/oq0cE28rD1KY25NkqFypPeZBy6oOHutx/c8WMl1barf9
	 VSlgWEgbXrgH2O3tGNi4eg+IfMVVF/NpkxWVNMZTW+/T4vc9T7gq9McOwpG8RAE6zF
	 RKs5H3pwHJYmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9915C27C76
	for <ddprobe@lists.linux.dev>; Wed, 25 Jan 2023 09:33:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167463918575.24645.12589034483973955537.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b485c7f58ef40203061d6c7199c6446aa2472ef4f18abddad8ebef90d3bdee27
Date: Wed, 25 Jan 2023 09:33:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674639185
