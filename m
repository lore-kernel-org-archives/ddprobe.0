Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7111F3B3C
	for <ddprobe@lists.linux.dev>; Sat, 26 Feb 2022 14:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645884984;
	h=To:Subject:From:Message-Id:Date;
	bh=uquOu5ooC+W2MwXAJKqynqUQ7/cBA/J9KfdpDA+v5OU=;
	b=AT6qNzavVZhaxfaVtV1lEl3TYo7DCnmJeW6mev67PiqSU7836xaW0+PoyIoRwuZ2
	cbIpQ2h7rfgqb+l5EDyZzo4XAfSdPVKk8y5+ICHCKNQl1SxQ3pdVogCkqFr8QUDjRW9
	8mI0knksXspuvVhSE4yIgZ2d3++XQPavV2JiTWkY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645884984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=uquOu5ooC+W2MwXAJKqynqUQ7/cBA/J9KfdpDA+v5OU=;
	b=mA2hzEBxG2YI1PLuumrWU1uJgU7O10Wrs0bO5zzmyV8U3gUuq34gnJ41cAAVLKul
	10ZkaXdik94diDEZoDGFpaaEgsQnGfns5TlINlcO3XUrTKtxwBA4TPIQhamzz4hqXMA
	g/PBtsnVPfg6t0KcaF9yOldLiBJGIpJ7yE5jjkVU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3663cdca-bf44d2c7-0e2a-481e-809d-90a54139a19c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e16e967910ab4b9a9843f264f4970eda639c1779c8d2dbd4f7968b7318d34b87
Date: Sat, 26 Feb 2022 14:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.26-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645884984
