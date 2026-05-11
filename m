Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5ADDA329396
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 07:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778484634; cv=none; b=K19EsUB+F7s992yl5M4JsC699MPlsK+6fOhnsj1gQMq5hnkrJKMrgBFgMpP8DvhsafRhLc7FkhCEv1uvAEAnbA75BhT3z/rCym2ZJLa8t0QXYkrlbUNOk4uCpwOCxhkGWp4/i1MCIEW9A501YFniPEgfft2S3PR/iWq/fOhxkxw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778484634; c=relaxed/simple;
	bh=Zvy7KGvMgF/zAHAe1tx0TygV5FTuBJwVsR+H2xEUnlg=;
	h=To:Subject:From:Message-Id:Date; b=JkcleetQc7/J6PW2gk/9BwJwxbEsppYRJjZPPXCNf6rlhgldiOEuO25xbq7imlVhwHhdPFKKadbSlZStGFJ8kgPCVU8uI3ZrbUr8ad1SbbPDHKYEqsYJgtXTIy1YQLyl7r7oaRyequdNvnWfRKm08JqACOZDyIbwwYvzawLZezk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WgsmFmkO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WgsmFmkO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 01630C2BCF5
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 07:30:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778484634;
	bh=Zvy7KGvMgF/zAHAe1tx0TygV5FTuBJwVsR+H2xEUnlg=;
	h=To:Subject:From:Date:From;
	b=WgsmFmkOwI5ri0UKsQWELVdOCl8UCodNEfz3fYoSZ9p3OECjV7KM0EBJS858j4Hob
	 spKMsY5qKYJ1zbXfN4NQvXqW3L1OCn6szT9sNOiLPS/bu9K0p0XOHBx5qEFkjYNyhI
	 TOiQ8GUysLMgIBIS7cErPM2+b2iWUuezXXitikFcajbGuolmyNkp2mUDZo1wIIBMq+
	 ynVTQoLUvqRxJcqKhmTHlRrTYSn+uW1AUh2KMPCIG0b07jF0r6Kna3+x95YT+GgmOn
	 n0KnYx3khtWUyBAQwylGQJU+O6Eaoh8DNQXJzgqTaiK36poEWX9GYO7HqH3K6KM3S+
	 9Jrzb/TZd0rMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D41B1CD4843
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 07:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177848463378.27053.16128396534983272163.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c03b71511d9d7ee162bfff16d7df69a1f34928d2ecee0d66064b2538d8d834d2
Date: Mon, 11 May 2026 07:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778484633
