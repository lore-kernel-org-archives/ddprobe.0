Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AEEF175A6E
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 16:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782145594; cv=none; b=MUZ7ZaEXt0oxLk8NGzirsnJk2GWgivQ+Ks7yNmxP4qe/FRMYobwnxorgsNvOerapxOtLGxZtKyIcNodhdZoUU8tS2H541MW4R7TqOQp9F4X8PZrHoAHL6fKbw0NS3ttvg4pj/h4/JfHKlLTrEucsZCq0ElYaYN1cyChQvknYmAc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782145594; c=relaxed/simple;
	bh=Ea89VO3Ugl98M1sICmR+iosVO+Cd73vphX4vSIJilq8=;
	h=To:Subject:From:Message-Id:Date; b=aYRUyMH4X3R5dJVlVEH0xL79JTrOjno6ZD7TBoWzlgmYvQcLNvgdN9KD2AoRlD2jANWroZF9vQlTJx3IMys34bsL8kPXD3Yz4GWDYY3xWia1TINJxk/HcE8lljd8wO7oY6/2YVGTQbhqRpmK310HrhRlUFDYP4PN7uZJDDbEXZk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rfUFGRK/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rfUFGRK/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC8C9C2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 16:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782145593;
	bh=Ea89VO3Ugl98M1sICmR+iosVO+Cd73vphX4vSIJilq8=;
	h=To:Subject:From:Date:From;
	b=rfUFGRK//wegF86chwrz9bwZCTtzcWi+8D5SAd4ecjqVm71tyu7Yh2kDh47FK79Kt
	 RWph8w0HfkFaKQa/YgPRIJchSe6/vqlrJGviSB4YCrMCVJMgd5yXdm1zS6GpdF6t71
	 JRou2UEyCnl0VPFQNJvMFbiJWbvuK2+8QUvFrxRuyPRu6eLbJNjXD5CwHQnShf64qk
	 WG8uNWRhCq3JcGTHT6siMQIjVy2QbnHFafLbkmjrglYzpqIQsG6fkEHZPZgwhqAYUI
	 e3dQfQmIolH/lh3OH2eyASZyFuttU5ZuvzjB7jWQvv1UphYhCGphPnH5xpLz4LYhVU
	 7vuSLwoZgji+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B00ABCD98F2
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 16:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178214559368.3840.709248896748451554.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c99fc592abd998e7e604d77e4b174d3aa143728b2e12d1abc34734058afb3301
Date: Mon, 22 Jun 2026 16:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782145593
