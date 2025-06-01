Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3872317583
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748804994; cv=none; b=hRwVj3TXA9nKnQAfHX5yZW7Um0at+Xg6ZvHKz5u6uWBHCnnj6trtg6D2u0wKIw9+ynCBNZfpE7Y5gVld/AVQzlX3gIPbS6tNLA/iTd1+HoGujBaehTyy8+tTkTONyUHMnoYjU+FqWcgAvjUUZ0RnlmVCdN5d2h/pEQbit4usmJY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748804994; c=relaxed/simple;
	bh=4aZWf+0fV/d8RDiljXm4oK+6wHQRlYT3v8AjB4dGkhk=;
	h=To:Subject:From:Message-Id:Date; b=DY2a8O9jsc6Wcd6/604jHihZ276CXb/iMyp2gBYFLdtgwduKzXg6awsm+mxlBVI23MNAs5hsgv5RjA+8zbmWAzqzCuOOruIUV7YLAv13tCHGq5I/7NVOGQcX/Ym0iipepEExoOti4gM+Ue0yjLVFz2co9bkhlbxvMhpjZKIKYL0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KSUp4b/P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KSUp4b/P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5F27C4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748804993;
	bh=4aZWf+0fV/d8RDiljXm4oK+6wHQRlYT3v8AjB4dGkhk=;
	h=To:Subject:From:Date:From;
	b=KSUp4b/PTilXQys2nnZi+xQInUFV0SwrDkcNpzojh0R2fhohLTOLbVUU6+tg4fFrQ
	 Vc5NIW6ygu8aiYDuX90j7aujLzDeUeY9qR4YITPuGNTcel2/FpU4cjbT9+2tJLQUXw
	 W1QlM0t1sKBpt8PP8MlTN9Dl91pz0qnQvUrWgJAJbwrVCExf9dEPgoq3gJi5lKdtLO
	 NcbgZUPZkxTrpnfAFSS/2YTFICFfAceqa6MFE5r87/svJu6cutzp8kmJpG0Z6DZ0SF
	 4p5QuJR8UMGULnSpRUQqX/nchUes2Dk1eyeQwMTs7OS4YrCOhjSSaslOohepobbk1g
	 uYYxs/nNDBkLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF14C54FB3
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174880499358.32659.14642079900502066845.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50d3ab3871305f588d8d7169833804bf00d7ad247d6518d84ff2fbb446ddd790
Date: Sun, 01 Jun 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748804993
