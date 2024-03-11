Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECD93F9CE
	for <ddprobe@lists.linux.dev>; Mon, 11 Mar 2024 06:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710139097; cv=none; b=XpuXuP4/vIdkRjIbOfT3nj/LqS+e5i6OKj6/gZhrjfhjUOi9xcQ+pxYsj6c5Ij/DAGLdcdTfff23WWYiBZeWk5W6s8bJEu+e3Z5b8AFndJ+W/+cntyaeoSKdhXA1nqiJSEwwIMEEh1hHbS1cXwKNscOdQUOvxZGCiYxSrJP0WGo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710139097; c=relaxed/simple;
	bh=xzu3CnO72XY2xBhU/3xLvePDGq41IuZIl/GF0bv6s1A=;
	h=To:Subject:From:Message-Id:Date; b=tOyeln+ZG/wyMb+Rnf5eNKcV2FGvXjf4sG0nXBUK3mzLou+kzUT4/xUn0jDgTgU1jWEnoWXXdUhDSnos8k3tV9U6BepUTBJQZjd4BKtZCEX88xEJRRDwuMzqQFqYpp7CsS0GgE1q2+hzknXoDMwoODJnCStUgxo3AsGOFPNjxoc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bSDGtQan; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bSDGtQan"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77E23C433C7
	for <ddprobe@lists.linux.dev>; Mon, 11 Mar 2024 06:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710139096;
	bh=xzu3CnO72XY2xBhU/3xLvePDGq41IuZIl/GF0bv6s1A=;
	h=To:Subject:From:Date:From;
	b=bSDGtQankNfnuhiREMfDXydUiGtKkukbbBRBvShoRqGETfIQkk5NjAEZyXdaLXrre
	 Hzy/R6vofWIw4bPzDhz/Dwwb0UinKkXRotzdtqwiD4Pvr1v24FlN3a5v9maUnodmHx
	 pd0ylIG6CeG9Ul4mAlvkpYX9fxctBEpyKK8qWlFVDxkm8rIvVqTCMMJPDCJdwn2i3R
	 O3nT00PPyXeccQ+JYIEgv3ndS2ap7bnlnW6mgINelXDaYcz+V0kmPHIBRMQpKPmNCz
	 TM0O/pUs4gFi7ZaLk6RbQup9tP1rTTmEtQ0/UHIL3Vp0d87ZTOQHmbt+FfWrZ7tpXK
	 UkVKnFYNuYNWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CC9DC5475B
	for <ddprobe@lists.linux.dev>; Mon, 11 Mar 2024 06:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171013909637.14145.11345670289938832934.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2364e813ca0c81e2e75f2ff7cd842867887261397cd735cceed37d28a26d5670
Date: Mon, 11 Mar 2024 06:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710139096
