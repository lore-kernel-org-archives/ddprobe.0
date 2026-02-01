Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18BA83EBF29
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 00:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769904834; cv=none; b=FfoCppsS2XZg8sqhruOBMNTfNBnpQifRkgKCt3BKJLVZpc3poXNq1Fj3ZvHC/sH3L5oJwKALCdEXyn+/zdm6VfE3Lxedgic9rxWG15lqwM5zAXZjQM0/ZE/3lJjSI5vknBM0rrpRE1GdqoRINwfg7ZjDjjWo3sncttcmkUkGWow=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769904834; c=relaxed/simple;
	bh=7RXqqvhngpFfMpw1eL0vN9K7yZUQ5syWlFk2u1yff0w=;
	h=To:Subject:From:Message-Id:Date; b=Mb7AjeC6uu6nezYOIiRmUuCjUiyKsF2zkyBBab/PgnshVrwjrLc+OW+kxP8Dl8Yu/YljeHp9AbHt25R8ULPPyScMNn7vBwQ3/JZPn1WxIKUhuZSZzE5yGizKFcuKdAJ5m/OzvPV4I3pLZO/4cbw4bbQiVqYR5ixqzCFjDV3+IgM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rfYhSEEV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rfYhSEEV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EC68C4CEF1
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 00:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769904833;
	bh=7RXqqvhngpFfMpw1eL0vN9K7yZUQ5syWlFk2u1yff0w=;
	h=To:Subject:From:Date:From;
	b=rfYhSEEV1MYPZcS5+m7SSaBNMRd0leMTxMwwvkUH8xCZUkGf4OC2j4VX2RX8/Ta3u
	 G7aV1BaYT/45uA9ZOMEUpgK98SN6AJ770248ipMX3zTYIPvXeLwado9ih4qQVL1OUu
	 OPJyEDEvQcbjPfZVD4Q6AzEXF2xMSIbG5UtwlTEaz0HrjlWa9cpQzNVZknVDFKo7Cg
	 IkNgQ+b07ViUtxBcnsfR8Bp+QAL7B597sSLbWoYNEntKh7LfimphQCYUrlH9EmTzGr
	 J1j/UbgGD43ukHv3ZbO1KEiUg+EDe9OOIOwELzZ4NFVPOnE44mBdOpdawZULS3XXwU
	 PgVd6wfP/KlQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 913B7E7C6F9
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 00:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176990483357.25475.17935770225769856543.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 324523460e2d3f25d96994f298a710722d93bf49004f827ab8439c14281354cb
Date: Sun, 01 Feb 2026 00:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769904833
