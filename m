Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35B3A8F6B
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744978794; cv=none; b=mLF2+9dKyLX22idwDWifu6XwNWcxwTRaip7wE52yjlv5kb+9K+4N5vvsUBMI9hV9VyxyalfIxCrnwpYLuV1gBpfQsENZPdStXrK8uNBpFXn3S54NOqKVhF6ldiQzasnMG6anRsgvJ3o673DRbD8lfw9gKfIyMrQ9g9X33eDhifs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744978794; c=relaxed/simple;
	bh=YBiDUxNvti/8uUg6w29twOnsEB+GjKkcSt4I5ZAlXKU=;
	h=To:Subject:From:Message-Id:Date; b=kbowUiA9SoZQo9SihlVv3+47i3Qg1QmpplxyrD0MPaS9AAEtuYtFdtOBjgHl6KEoQ5Rfc55GKCNFiLp6tRT2Z5DaOqpT6CU0oZnJImKBcaYApu9Y66R72BlIMmZlgG8KnIPBwdiQZOZxgtoBCVgg1hFkjN3mM5mL4oQ61V5ZqsE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P7L8Szhz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P7L8Szhz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC4A3C4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744978793;
	bh=YBiDUxNvti/8uUg6w29twOnsEB+GjKkcSt4I5ZAlXKU=;
	h=To:Subject:From:Date:From;
	b=P7L8SzhzcAwF6eGLxi9oNZa/YlwmlG8b3yCwflFtDGPYF5GSIe1mHDO6nCizkiHJA
	 dhWlD2SeGtsgcg8s9COoi9YGsuxUN7wT5dTzl7TdrdI09Qcf+FeZhk+/3KdzOE+6f0
	 qudrs53HFEH6Xteo8B6Jr9sdSoFuj9+yD7IxgL/heqXsK9e08xT9/mwIvGizfRdrB7
	 6O+BmR9qZ6p1fUH3vs3hGMEbiDMQZAjaHHBFK/jtg9G79LXgkVG2ppGJQv3jiKFqMy
	 bNUOrQDMFONFyvlslrvVGp4nlXFVJb2KONXZpcKNNvHJEbPlJfs4bkrIpWrH+604j1
	 KiUdLtbNK5Y0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99F9FC369AB
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174497879360.16924.14042313276471485559.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bda8a47a4f1ca1386bc870f265c224ee2c79777457cafe96f29714a5fd54478c
Date: Fri, 18 Apr 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744978793
