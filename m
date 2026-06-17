Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 578ACA95E
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 00:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781654794; cv=none; b=cz6damfhZqYTvH3fhA44ArPZGIOwoVqF0fIua6sxNwudEXRKibZsxupDP5pkuZKYEx1rDRjx9YNGkg+OGQbZ4AU84ZYuQ4acvEivXviyUJazYe+It2b3B9w1vfS2o0/ufDIUoqsOhA2qvNiXOD2xZMsdB2nknq+Rl5v77pZ0i+4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781654794; c=relaxed/simple;
	bh=xxr0QT3Nx5b5OuUBoT0G3d7Tc2J1LbxkoRF0CNSKJaY=;
	h=To:Subject:From:Message-Id:Date; b=LwZHg6tZJGb4nVBsPDjzLhwn0J4f5xBW66Y4lt3bIKdyj4CDh00OBVLKoHCvriyrMIhJ7BOAvsgCCinDTr3jOO4RCqS8l4NZF34HdflPZ1sadakxPV0GdHsfQayamk0yEzl5CEGaT+sUgkfh5a9/GrOUdkpxgd/WP5GJxzYNwGI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nxAm7kWV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nxAm7kWV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EB1EDC2BCB7
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 00:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781654794;
	bh=xxr0QT3Nx5b5OuUBoT0G3d7Tc2J1LbxkoRF0CNSKJaY=;
	h=To:Subject:From:Date:From;
	b=nxAm7kWVfP29PYY0CyRWrYNMpHJcXwpGywWxB2lv07EBRqx9T5YLYLrN9eYRrmxEJ
	 djCGfFsxG/TwSbK0v3EpQD4uGQKFc1ERaG5SDTT5Rh0xO+KbP4DgvnXa6je3ObiWMg
	 zyNotyFlxUnqysaxq0JkU63zzsC9NcxlrQedtGxL4WXsH6QRZlKM8bg9RM81mOBca3
	 A2fzl3+1SDMU5RqT2PKGGCoFapl9xCFZbauQtzyCleouoxUZHOeOEVyhIsZ+2rY4nT
	 1LFcL53kzUY33TjRynXjCYTVNOIySnOB586Co8ciLjhl3uBdCQfygLi6z1hF//RVnL
	 QIv0Eo80+Yk4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9537CD98EC
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 00:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178165479379.1663.2363255747167293156.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 634560327283779f50ce6b5db3322b78b81e49566210966ddecfe906cec14d0e
Date: Wed, 17 Jun 2026 00:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781654793
