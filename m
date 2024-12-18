Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25BEC1369AA
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 05:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734499554; cv=none; b=aoEZe37CaibUBNkMo2/1M7BDZ4W+7OlYOR196FeXoTbK6ffHOLbk9o3QJnfDPcLiBQjacYGsu6F4qytxBSLpbJioYaBia16OE1b8f0r3Azg4gP5x5Hd50Um64rl3ErLFZdWy37Nz+uimoRHIjEu1brF4K9L3+IbYOPTZVi0Zs5M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734499554; c=relaxed/simple;
	bh=IrZyt64hoGQLhwvNja2FVhCwY+qmGOnNhrPaoviAhCY=;
	h=To:Subject:From:Message-Id:Date; b=Gwhdjj4uMVvZApwEKUn4o3cNjcZVDnsi+u5iMOaI7IjUVshsDySh6gpCKNzf+PYSKWbF+3DYemsGVD62YFM1Z8ULG2aZwpMQpHsgDLbC5fN2VWeKXFkVzkYChIAq9s8FvVIgkrGvYEpXrPmTviSbbNePyh71Jqiwf7a017uXF+E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YhqBvoHJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YhqBvoHJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A642CC4CED4
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 05:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734499553;
	bh=IrZyt64hoGQLhwvNja2FVhCwY+qmGOnNhrPaoviAhCY=;
	h=To:Subject:From:Date:From;
	b=YhqBvoHJfmkXYkZgkO3jmjXqWAnwWR6uLE3Jx4q7ayynU5sgs/7iv4TtCpMyV80nD
	 7oRl6r41UFmdxABtpHwUy2gq7Aa5VRvJPH5XIUxL3vd2WJl6HPMTazRAAgylb/iBQD
	 5O0NFvtL6M0ND/3+ySV3qQMR4w6c2mTnAFoDDp3aYP5vDUjwfcMWZC1f7LFgmxTVbO
	 vBVRNL4zJwbUywcTanwGoVG0wpq0K8N94t0h2yJka0rsTW5KyAv7a6sxC83bftVYlW
	 jyeCD8xB+HqPHTnFw2zgb0hV28+VT+yhakXdAy1PpYQwznD31lXQJ7rvwbDeDIW2wU
	 snVRFJuQwLjBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97AE2E77188
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 05:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173449955361.25619.11141144168174534687.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76818975d3783f95e06d7797adfb4147af766fbea4556950e48507693a1b011b
Date: Wed, 18 Dec 2024 05:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734499553
