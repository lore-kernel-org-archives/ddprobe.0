Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FC103451C3
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755559794; cv=none; b=p38zZyK4tz6fySsTBnZ+am9XDP6f53Ntu0SN5ZHxA1NaIW8iqmHg3NSd7jibx071Q0tCse0F4TFM3VIYwVZoPq0AqSfk4j3OT2CxZtWIW3qemvx118EuvUCejm8J0phOZu0rkm0LUb9YyGHgZtmLb9juaATEhZgJWUz+4W6H/6s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755559794; c=relaxed/simple;
	bh=/u9i3j70c1Yo3DgPYJtfzZc5+O/VfD91eH91AT0g1t4=;
	h=To:Subject:From:Message-Id:Date; b=MOARru1YiP022BCfQ9NmCxTWqzcvf5gnjHZHKnooFcopfmVi7hJPD2h9rSXfHmlPhXZXmuNjovDCPzpBbc3jV3oWGZa2EcgLcIBajxOzQW4uQLuwDELSIYjfgtUKziBcR+9zZ9wT4udw6MKE1fTdbla/IBrGeofrgVD0W0I5vO0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ONoMeHWn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ONoMeHWn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3855C4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755559793;
	bh=/u9i3j70c1Yo3DgPYJtfzZc5+O/VfD91eH91AT0g1t4=;
	h=To:Subject:From:Date:From;
	b=ONoMeHWn7skJucCNjzoS2lYB0DT0BuAyhf9je0QhrfBHTWho4lVOklStRVtWdhMXZ
	 Iz5XUCnKouv6w1n+5Edf4VFvv9pww9p4kYHn0rGy1NhVwJONtdqQ3Buvx5qI8vUW9d
	 uJutbIpahWBVd5diuw1Off/8Hm2fJ6v1Ew4BBCbDZ2Pmj/moYwktV1KH6RYvGgaHVe
	 b8oFgdFwnQ3LDkAyopAvVDTNalk/bOUK8SA6C81+Gi5zQGIgnwD5J0/1yKlqVNCY4i
	 DspcmOZVJ4Tu2Mhlz2xtM2nOmqx3MsUjcbzn9cFII9NBiBMDQRBqTARkg40IO2NXJF
	 cVytbmxGrAlnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9582FCA0EE4
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175555979358.5851.15771465962949193223.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9a074b30acd46149baed6bdda309eb741b4f4aa02d5f6ef26eab2b0c98097b7
Date: Mon, 18 Aug 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755559793
