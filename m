Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E14F3446C7
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 10:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781950594; cv=none; b=MwTwocxC6kkTH4yZWCtvzrM/jA5ulUyZHyt7E0xbW7VD6OhS7SJauMzDgqvVRJN9FY5uOoQWx3Cd6yJkbD5JZB3473HnAm3hISxjsaCXBjJQzIm5z41p4nrkL2yjAUIJBo0rvSBl1tpff7ClMxcP+3BczyunL0J7XdjyNQjB4yM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781950594; c=relaxed/simple;
	bh=6Mj0W5XH/bdXcMw7qPvG8z1utki7Nu85YXgxvgu1mpE=;
	h=To:Subject:From:Message-Id:Date; b=Kk9vwWle4nMlnRHxUZ92Xi+GzWe5VtF6kkMAsWN4FsrWnYcETgbi8iVKgdmHtEVpdJxRolW/lyWDDg1/237d6ZLMnSWXinXxzTF6IDfyWwcUnuOwVizppb/SjmvxCjf6g2zubR2bYdfzHdpsP1BVbmNA2jJZH0HKHXleddUyWt0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pO9sD4vx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pO9sD4vx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3B4FC2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 10:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781950593;
	bh=6Mj0W5XH/bdXcMw7qPvG8z1utki7Nu85YXgxvgu1mpE=;
	h=To:Subject:From:Date:From;
	b=pO9sD4vxg+/Qt0+Vx91fwHMbiNSVVc/g4NmuoAPSVOmycMMaW6JyazFpSRUdW6NKT
	 YBtPunSG2ZnyhODHiiM3dFsffAsjTomPnLNOtWZC/7zL2q+Ss456E4kVcihH0wmrj2
	 P9GQaRjdyJk2CS6i81E86bFowhaUl/kiDpmm238ihVxTu+okJ4bm+lDrr1EuFbv3Ul
	 1gOwONFFWO5ymjboXXKXfXQ0HKis0tYrcaqaUfA/L9ZSjbkAZPM9KCASUtsgxdzKsj
	 Ca6FDNqbo1gqwY/8RHZmQFuPS8VWrKevEnUBjZUVCo9fvwO1pd4AoZ5WMh4bz7IRCM
	 lf1J/w+mBTFaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B43DDCDB46B
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 10:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178195059370.14353.8833910388404831149.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e58bfb8dc1bcd22520a388a028009373abf59142c19baa5127e9e313a8f1ac56
Date: Sat, 20 Jun 2026 10:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781950593
