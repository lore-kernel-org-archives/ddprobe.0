Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DD561FF1C7
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 14:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771251894; cv=none; b=aWsHs/j27tNpWDHW4rCIxxGRwsj8vs3kKwCZzXgmmtMhNRXh2mDBhZ8jEv5qsWwejWHtBFR6RK2fQe05OlQ3BlA1HJP0l/gaAmWCZtJcyQeAXo+wh01ZO5RqFuRIfqj+AnW/TF7Rwd9C8kGxUvf1bbsqw7H71t7u+HivaXC2ut4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771251894; c=relaxed/simple;
	bh=bA5ykqjjT20kKvbmbjpP0RPxJmoDmtSfPb6AVWYN/wE=;
	h=To:Subject:From:Message-Id:Date; b=PY40eMt25G79CeII/9Oq+bRab+XrDsF5m4LxbzJNFnTvLwG6E726LnpQF2HQWgpvuOmzVVi+d0zTwEnNj+9KYSEGbP/y+kWPqgRFB4WwvYLKr1jOA0f99nmEvYFMYMCnZXG48DN3upqpJZRokPB/A3WppFHH9onx3Z4TmXhd7eA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dv4wSi+r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dv4wSi+r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE193C116C6
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 14:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771251893;
	bh=bA5ykqjjT20kKvbmbjpP0RPxJmoDmtSfPb6AVWYN/wE=;
	h=To:Subject:From:Date:From;
	b=dv4wSi+rTgIbdxuaHNbCtLp9CMXrHFBTppWn8nGhMYxq+Oa6oK/OwaV397D6HQj+y
	 ePWEoVWWnfyO0sY7UP0+hZ95SHfj6FS98pnLlvC86iFCipQ6zwJ+Y7myC1hwGmNh5S
	 zxKJadcglPdvet1bbdFq7vj4yUFcvGZNVm15fk4Ptu+YV3Uig6Sj99FaJRmCSx1JT5
	 84Zy9GTvvPA6W9noEzljkXgFAk96d2fF8j39AsOlYIqckNaUZ/BnUkdZyV5N3HlX/l
	 KLvUr4dxujRzPTV8Z45DAveAUNfyxWMMt/O+2QLmt28nDx9ajYBkmwBF0JRQ76ZcZ9
	 dRSbgQPhxPqQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 969E1E81A24
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 14:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177125189360.25099.10287883437403612945.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e727bb8ee169d765520cb07b42719781cca51b0e901a6565aa3b28d94d8267b
Date: Mon, 16 Feb 2026 14:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771251893
