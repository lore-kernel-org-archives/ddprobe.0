Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58C343C39
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 09:06:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720602383; cv=none; b=nVnzBoko4cx9Ng7IdjTMHAzEhGEhQpH9xfn35NFtct9+xPz4aCyKoo7WLrrnsLdQT/OwdXyUSnyb4lKcpq2YwVOiIxU9FPutszJeDQn3Gk+HNaEZT9d/KYtwS0BJ2/sNrwH/zFJU/DR0LckmrCc8nbk9PUrc3kLa4ZwBfFZEAm4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720602383; c=relaxed/simple;
	bh=yrOXy6i4y92nxmJzITC9z4G+BgGmHHMiOsNyU7l/huw=;
	h=To:Subject:From:Message-Id:Date; b=X/2w3U3BTP9EJq1HL+29G3+lvyCVOYKXQW7y1zOHCqvpgJOGmV2zKD7sJAiGUBC1yB14wcnMzm3Oi8maswzIiFk1j7W9Vf3xaNYnMZnZ599QyJBkxJ1TMrrEu04TrnXIowKsWkN0bFBy6YMKg2Hx7fxzC+tmCl5V9FNBPc+WAMY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ISZ2g7un; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ISZ2g7un"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8664C32781
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 09:06:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720602382;
	bh=yrOXy6i4y92nxmJzITC9z4G+BgGmHHMiOsNyU7l/huw=;
	h=To:Subject:From:Date:From;
	b=ISZ2g7unNljOgRvhECZyyRonFYcGEA1C9rdv/fQSvGuyaW5c+jY3yDjP7wLZzb+CA
	 Q29WoxGKfkxGe+87nuc0F5DmchR6eVbjfsqm81KdJ8kbxFwTm0vSmiio6MypMC0T83
	 3gxWcQ5Yz75WOm0hUtZfEyWLTZJurUXZ4EKYsM7hrm8nKv8WsmjSQAHuzCiHVY4/z8
	 ctsjRl5WHr6yvzEzfClwNr2RcTqIyQqfkDS7qD0wY53guwdHnUoJbZ7/xF3GC4ghHT
	 kFR3foApt/+jfBeTgem0NJ8+SX1VeqX/uHzLXFfgDn8qK04ImbP7G6GdhzFebqPXiK
	 dCKzSIhXa6Juw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEE25C3DA45
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 09:06:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172060238277.28889.12274445544303471709.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e27afb36fba15332dcdc083e466ffb1c0a60c3c194cf44d4bc409861b14fcb9
Date: Wed, 10 Jul 2024 09:06:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720602382
