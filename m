Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 284CB2C9D
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 23:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767137634; cv=none; b=IGXQ/yuHJwHHRsXKLXRjyqZSQlaxFURCiwbmHYqdt4RCsUkehyZ14lEWWwTgiMSrCKH7FdgFKP3WGFEbnZyDDhplv9CcBxI7Bxefkn9KZ17pKt5lDsfUcjkb5scfj9o5u07YbJdWFPWnJYkyPYRgM0fnvnXvNAzYMnsvGG/pogY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767137634; c=relaxed/simple;
	bh=nQlU0aDpjmFlKLrLU5N1ny+J2v+PE5VVdkBYG8OZV3c=;
	h=To:Subject:From:Message-Id:Date; b=fLbEST+fGRG36wXvIxIX90ql9Pbq0LVCg+YlJmdZo0G5pH3IMkucK00Ezx75a90bfeNO9fABqLiPhzTZUJUr9fMrbUaEvD1HMrYwCW3HoMf9+u7eeHTGnafwu1zpyy7cTe/YkEdlmrTMQS+Iu3CdAqIpA3OObHAzHcFirxPjFDE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BY6AKoYH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BY6AKoYH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6E5DC116C6
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 23:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767137633;
	bh=nQlU0aDpjmFlKLrLU5N1ny+J2v+PE5VVdkBYG8OZV3c=;
	h=To:Subject:From:Date:From;
	b=BY6AKoYHwTgqHi3vgJw0KqCWB6/iW759R/UtbdglN6c+rVZT5vok6UjXlzBfdltLD
	 5pFApsMo7YDn6eVVaemKlED20EQQcYkzEK0hhrCw4NxCgH+tfdjE7wZ2GcwU5MYSTF
	 Y8xe24i9FZ8kLoLuKa1ulkbkRyD4rvMxXO6lTnbg2VOMVzaXWKAhsPBhcxmK1sFGJW
	 xaKIKOQIPa0ZJWdr6RxxHtmb34eSB0W2ThqcbDt7pnjgjXH/swqnPHUV2SERYdb5vI
	 bk8ACGMHNTj1mX/ti5zyHmFVjbmSQILPOXxAprUcGgDuaez6BW7ON/SOa2Y09NoSUE
	 xb9TYFnlMwCPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92196EE57C2
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 23:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176713763357.31167.18147899100260517054.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9022840578891780ba033d17c6e9dfd432cf17d5ebcaeab0906433ac35c84b8
Date: Tue, 30 Dec 2025 23:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767137633
