Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54154B676
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 21:39:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743284395; cv=none; b=G/bJM7QDXw7rDSHHD72VseNVaz748kB+z5IFCjlbfUbVltJsEkzdsJYX0tCZ4K5q3h33ay7x3M8VCH432SAPfA9aJPzhIdms6DmdtVW73NKttfSUWF+C4uF6A1qMMPCJnyC8Y2kxUGZIqZGuKXS8Tg2OgoZN/TWHXPb13CjdnVY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743284395; c=relaxed/simple;
	bh=vZ9aHpIqdQolSxhXrukG74M6mlnUrsGqGECqiG5UoWc=;
	h=To:Subject:From:Message-Id:Date; b=TXAbPgMXa5pW7mxyVt+iRLxIBehGKwBf95E6TVTC2qLYLPBcx4UQLXZlfx15QHtnAqIcauHc1+2U5CsclMEZWviLkXWtUdqL8Ywzyue0Zanhvlyc9LseoPKm9FUi80uvkTY2NqwIIeYxbZaTSkJa8JCauaDkjVtNtDIjMb8eXWs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BY0JUUeb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BY0JUUeb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF071C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743284394;
	bh=vZ9aHpIqdQolSxhXrukG74M6mlnUrsGqGECqiG5UoWc=;
	h=To:Subject:From:Date:From;
	b=BY0JUUebyJ2VD8FPev5+5ipWIaamLcLuZw3VbU1EU0ie0abddPk4EIshgfEhU9QJN
	 4owMHPk8FvFP68h+4qhsU7whRVJ8hNqzKMtkTtK+WzI1/WMo6jqZJjL5mW+aMUh9WE
	 uW2SCN5j7I8QGHAqC7vUYkmQhN+1XZV6NE5DJup1PpVttPYMAXytY0LC4lkm0KVJUy
	 ngoBSSQ5qjhBjVMNYGuBrE+UFfc4YmhQchzLG53Arnbf3D3wGnCHISAhEMAsVWD2Nj
	 7pVOw5vAu6gCIkLcdxDaoOQy07hXFbJSMYXYdrJNYylEG5GpKRt6a9emPBOqyTOa8l
	 uKY3JsM7pIM/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1A93C36008
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174328439369.17891.8281819885559509460.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3fa7d30e6ceb7331903314564d54aa775e62ba5e6e572538616cdaf4caf58987
Date: Sat, 29 Mar 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743284393
