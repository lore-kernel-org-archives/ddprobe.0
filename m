Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFCFA54775
	for <ddprobe@lists.linux.dev>; Thu, 28 Mar 2024 08:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711616297; cv=none; b=Myb1FDu5ZwqAD9x7DEBbAJOJ/Ab9wbp4NUpJkdG7/S0YAEstNEWwcuFMYvtDRGYA1ycyD0WTXhkLrFZsCYkHhqC6MCuwAb1SJrrOhuqni/SY6L9XuPmBWijie7ojz2mQ+55BoZbDM9HkCbUOFKV/TFJOu8eNEUSKZT0B67ujuRE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711616297; c=relaxed/simple;
	bh=1NsG2NHouDvO8IVYiOX37HLz1OodKliqwDVyBSv3YZc=;
	h=To:Subject:From:Message-Id:Date; b=D73SjddPR2Nv89s/G7ysPfmYs54FUGhBj9bC+3xAzqa8A7t8NqUNHrAPYsyhLwzX3RdobGMJq/Ipf+YDyfEsFJ3t5jx/1FvbCVCa540XiD6M7Nw06tmEJNJuUbq+M3Zb6GPeFs+1hbbT2gUbOxkPgHPbfwCOnFiI8yVVP5HU0LQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GlTu852i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GlTu852i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A9D3C433F1
	for <ddprobe@lists.linux.dev>; Thu, 28 Mar 2024 08:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711616296;
	bh=1NsG2NHouDvO8IVYiOX37HLz1OodKliqwDVyBSv3YZc=;
	h=To:Subject:From:Date:From;
	b=GlTu852ig2GQvdp6oQ0BlRjGlXirlNbIZlJsg1B51qm8IlsDEdb9qq5hxtw8Lj4+K
	 IseIpEkY0lG7VES+cISh7KzkOKp9DCerzpZ7/gYDf5k0SIQpcbOjFim/TAc33LXAf8
	 0J7zFE+jJvB+ulVf9wqQb8bkqO4IlW89LCuDOvbYxsM8MZfE+/z7KkmWkHKbN3LpkN
	 T14JmBhVrCVZ30y64Y/qTbgWioXy5SI6jYBl5QYuXc5bBSuClIjwZ+Sn7X1zEdtPLV
	 jcZtYkUPFwrIfuXP+VSI6UFWHzMKe0661mdHQDXxPw+alNTag+n3QOSgULeJXUBEev
	 wBjsOO2vfNpXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B5BDC54E67
	for <ddprobe@lists.linux.dev>; Thu, 28 Mar 2024 08:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171161629643.26030.6444827205407662444.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d10e17e807d69ad2468a79cbd1478db43fbb1dc8f8ec97d674486212f1ba4261
Date: Thu, 28 Mar 2024 08:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711616296
