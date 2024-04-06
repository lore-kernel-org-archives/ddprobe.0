Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0183B383A3
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 15:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712416097; cv=none; b=RVKajCkQb02vGRUObfOFGrX/Waoj20xAzX5IC/SOGsv2eAtlVz8b4ugd/YLJ/tEa6EbN/3l3pJtvrSu3s514eBdIlxbrJIXV3jpGxs65NtqEnnVH0lIuu4yT29HgIB55QfXS7JITD3aHhLNmghQWHrsisEHscMJDYegn7X+qbOQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712416097; c=relaxed/simple;
	bh=OxOZBEf9ODYGGZEdBaJnEaZPDu1x+/BULdNbvPs9+Qg=;
	h=To:Subject:From:Message-Id:Date; b=PPA7OkYDK6eHD/vhwPsVm4iY8WcSPm3yXsCP3iOzrjHJhAO+gaDT8JdAt9CiJ8+OAQngn2MpeyPp8FCXUrluTx8OrHz38Oi1zH4KBIyDF7cEIER3qMr+Sekj6xrM2CYzoTPa9HaKamYoXjOpmmSsBmb68Fp1uFC+TxrBQSIWTkY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lQ5RH+5Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lQ5RH+5Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76046C433C7
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 15:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712416096;
	bh=OxOZBEf9ODYGGZEdBaJnEaZPDu1x+/BULdNbvPs9+Qg=;
	h=To:Subject:From:Date:From;
	b=lQ5RH+5YU1kxcY+g3IeJjJm78IS/KA5ee50J0CwjCl1bN1Q6ZD7TtDmnb8Si/myGS
	 9P5gs2Mb2Dk6oPAJtFGa9WL5kNEDipwwE1hl02lBX8GF7Vy0zta52pSxed4veriShL
	 2KncjwbsLFQhs1+95JdI6sp9YLHdS4OtDif7Hni6xRcgntbPUSc9zVrZ8ZjLzgNoq4
	 +BwP2UTOVwSkaOzfntCr/SPeF+SPj6MtpzpdrkLykBePTscXdFEv8Z2KSF6qplvKKm
	 cJvZMfe3Uoj4Ljs2tijkUmd+2HQzGp2P4JGckVUazYyP+W64wEGcw9rjnmNchHQjSS
	 Sc9M7ng1OBbMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63B0BC67861
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 15:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171241609637.9302.3017222425341376130.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 409dfa1427d2ac93749db4969580fb924299fd9b153fed10d40868986f11f200
Date: Sat, 06 Apr 2024 15:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712416096
