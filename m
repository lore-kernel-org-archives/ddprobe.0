Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D65DD13DDB9
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743272993; cv=none; b=iUGUwN4X0D/SHrcmT13P9o6rPzYtZ82lpAryXM4tqHVYNSvwMHVfCzQEZ047NAU7jvStWTheLGiLR19xKDy0u9g5y9C0omEM6gwi/vUviuBeXOMKSDAhIu9dUZwlvNYA0Kozj5kclfqGwxXLtpjLxXmEBY+DRiTI+OIb2EoA0oM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743272993; c=relaxed/simple;
	bh=3HvsG5qQMPtGimS4YNEVHlR7bcap4z3GhCQX0NUWpsQ=;
	h=To:Subject:From:Message-Id:Date; b=Xb4yfAUJb/AMi2V2n2v86/1BcUvERNfgxYXetgPBIqePxo6j5tOj55HvLR0l3j7WRQxhDe0a3wzG2CcDoaj7nWL3YoMgi0XB6lV98bKw0SjZF35nJOIju0OEYfYZ234hX5rU5spsVIW4WheOeUFuiAZ8ZTQnACHqfZlOLvozE08=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uJrXrRkW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uJrXrRkW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1425C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743272993;
	bh=3HvsG5qQMPtGimS4YNEVHlR7bcap4z3GhCQX0NUWpsQ=;
	h=To:Subject:From:Date:From;
	b=uJrXrRkWjDnD2NrH6ugSwYnisgGvmccC3rTzAFXAanr7Fpnm6Tz14SBnwz3yDvM7t
	 wVBQO+mOYKU70jnph2X6gcYy3LxQ9F35Y2gB4O+N6CGZbVBWLFwfdbehSgB1MQQJVn
	 7l1hE1e0f6LRZ38ai0xEwJK2tz6IACrR67W1sJgy8LOzKjj/MkL3Oi5mjvLVqm17LV
	 IMXVij4r/EWII8okQ5fzCSxyGdie1GBXuPbMIHimXIhJ9/LxVu1Xf2XPJbtZK8CQcW
	 N9n5QV+5ep9w5FQMDY/OiqsoSg9NbbsosX0+pmoley0ormnYjM5kCNBIHZjwU9NCe5
	 wh0smNgDNKIpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FA35C36008
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174327299361.11155.11531379109587591708.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d85f88b1303c4a4e1b95f198f9288a9c670b3ec247a8f66df636ccf971ce4991
Date: Sat, 29 Mar 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743272993
