Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3893C2797B2
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746735594; cv=none; b=ke+jB4R5rKgDJ8XWk2NwlfBDm+GrejYw8oHNsYZG6qRVoUJR3yaKsUJkAIRefZ9TrjccQhgzYaBN4Fziv1fFapqCQT6W3em0m7Qsclwc2ihhmP/eaWYmA4yraz7xXT8uRyYszZepzRobnKsPYAqw0juIEIHC003bJX4Gq8jK2CU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746735594; c=relaxed/simple;
	bh=dlZBd5YW1JWRMFo3p0FzP6pWP0ljig45rF9LiYAU0TU=;
	h=To:Subject:From:Message-Id:Date; b=Y7YlRxYsNlf4MhiH2iC3spk3EYIsoRpyYa1BHUL3mHYACqJDz+D/DYY48J4UazWiS+J/FKPTKHy4bBFh6xdi2JaTdBtwBmat+RWj3CJZbdftVWqPIjVyjhvVz4LnTjYHalZvkaKMsAcdkUP5ozrpP9pkZX0lz7eZ6JpxJ7RkUj0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BLUjDVhT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BLUjDVhT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FAE2C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746735593;
	bh=dlZBd5YW1JWRMFo3p0FzP6pWP0ljig45rF9LiYAU0TU=;
	h=To:Subject:From:Date:From;
	b=BLUjDVhTYq+qahyxR7yjxzyY9OTfDwjfYWTCMrRGbSoFYwYxj/RKmGRmXYAyu41uy
	 E4h3fSzpM+/mME7LHrRr0T4257JXjtgHsCyDJaeKpTEknJrsgpq1NkF22D395g+Qcj
	 9VhHt2GwNwtm+sUOkRu08e0PTJEMyArAs5SERnMEo+nHR+UB+0PQX9PtToAVBYri+X
	 nwIZ93g7Dk+qZqGWfQqPQKe5RPye2498xFBl7rZkOcLjCqISHduaP6WBv/V/4dyYcs
	 6FTODZuydskTD3wjIHtROai5r3y8OAe0t86M8UnQXY39RR/Tj2BogjcKo3WRi5lxLD
	 o059u+3rgnZBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E853C3ABC6
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174673559357.31543.11706965695942667628.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a48b133fe3dc685e2c96ac8bae9096904420728c37781ade568089785f64e54a
Date: Thu, 08 May 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746735593
