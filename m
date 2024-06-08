Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 644226A8CF
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 16:17:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717863443; cv=none; b=Luyt++3JGNabVsjYXwpbN1CaO1Xw9eU5uT5JLhCYULaYJEbLlJ0RN+djIBq+X47XtrWcCiiOGOuHKcND2eYyCThTxbgs0TUmv7LPlzPd2NKWilSnQ62x6XUhecaJ/GaFuWX9BJikURCQhZIioswW8TKIrGW6ZuAOT05PlX/chgE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717863443; c=relaxed/simple;
	bh=OSsV3tQu9Kd8lRMp33EsWiJ8yTorsquHaLUOay7Lxjk=;
	h=To:Subject:From:Message-Id:Date; b=dJ1GO+EGlPkPuzx0LB1XTNC2HyjU0G3cLCqXA3JUMTbxPk49d7wGfm6ab9zzla/7lKyXOwAhfbxeDkFm82pd4vFMOc5N2BCkgpGbbHud6Iv22wh3+V76b1Jcy0Tv2naiTsrhPxDpX6h2pSY70EK3PACjMpbOgmC9XlThojFvVQk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aE2KhYt5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aE2KhYt5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE93FC2BD11
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 16:17:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717863442;
	bh=OSsV3tQu9Kd8lRMp33EsWiJ8yTorsquHaLUOay7Lxjk=;
	h=To:Subject:From:Date:From;
	b=aE2KhYt5/EanCl+dzHX0U/oJ5pKS4VpI7JF7TLheXbZHBY9m/TG1G6L5rP0SVDTEL
	 WOUlZUAPRRMWT/8Dnp8sbH34DQTOIDA8T+F2yr1KMt+6NpL9FsK1UZFWkH5heWGvy+
	 DFvRxJKbFvcV3CubzwHY6QxeWg+nVSmcQnmzvWJFk19WhUkneKNHzgbnNnNg9vRHDO
	 Y8qvrrF7HvLo2/+XxtysIR9Abp+/pjqSje8j2eW1LPZFv0OcbU2jByz4/nSWuqANuL
	 geAR2Aftq9pu5uuyY9UlS5OBsG7qALVwZcEM5qN4k3oqynZVy7Fl/q333cvYP1QKyq
	 rCjSGHHrnO6tw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9AF6C25B76
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 16:17:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171786344278.1626.13658530935551459004.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5fb439f5731fa28829315f52b81355cce14e404ae10d1c2950937126e19959e
Date: Sat, 08 Jun 2024 16:17:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717863442
