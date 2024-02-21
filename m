Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D21C569D05
	for <ddprobe@lists.linux.dev>; Wed, 21 Feb 2024 13:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708520896; cv=none; b=euW2nEuhiiC7jjNfcHLvjrcNawNyEpGHfwroROioSh0YdueOpT9hlHR4ig60Rbv8pDd9JGZ5C3/DRhmNoIAkUCGksii9wS8+e5JC/034TyQj+2tNCXmIYrZXbZ8TjV+jw9Fyz8fHMwgc3HNlWn8S92dBspc6xbK53WlackilYa0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708520896; c=relaxed/simple;
	bh=K5CmU3xjV2Eslp3PTWfvuNSdSUnDa0+b+IpLdfs1ob0=;
	h=To:Subject:From:Message-Id:Date; b=LkrIU9w0iB0A9fzc1hFSXRQwRoNQwxgiC8krMOYdb3f5R3H9Gb9tddDKatwiaFtsYpvYXW90L5zPN1xksVD6gvao9n3jJsXvxtyVLJL5XSdip7iKRoihJuqtfHh+NaJFF29SpS778pQrN9ejZsT3tyW9sv1MoNQjQg6SAqIcwto=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cGxm0Q4P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cGxm0Q4P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DCF0C433C7
	for <ddprobe@lists.linux.dev>; Wed, 21 Feb 2024 13:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708520896;
	bh=K5CmU3xjV2Eslp3PTWfvuNSdSUnDa0+b+IpLdfs1ob0=;
	h=To:Subject:From:Date:From;
	b=cGxm0Q4PAZd63UiqxhI6w8ZZQk36F9ewXaC1mKGipPysCGxK9CH1nwv5e30JK4ETz
	 Rpfl1Ao1voKXkL4CwPQWNg6iNgPF1kPeIozFjjPSQtGnqGNZyOmPh0YwK4rk9J6R3d
	 U8rjgjIWM816Jpv24nyqmELlDxk0GioXFJN/F89dT8FZTKfYsKOE9o+jfrEJb7FZO4
	 dRQLU2b48sFT7hvGK+KdVdYqWDU5P8SdlVW6wQ/2PrN+z/ug/WsLtjBUgLFYyoNZw+
	 G5OL0WUaXK6YIgVbTjPLxpKgSnYc8oZRTL7AtkhESalbUZGjV0lbQDs6YExFR12axS
	 SXb3dRBv8lCDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C7F8C48BF6
	for <ddprobe@lists.linux.dev>; Wed, 21 Feb 2024 13:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170852089637.6509.7706151484923582660.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b1a7ddf97a8223fa2068e54ae7b43021deb0edfb6bacb6b14cadadb40482a59
Date: Wed, 21 Feb 2024 13:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708520896
