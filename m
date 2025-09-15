Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFBEF242D66
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757974793; cv=none; b=VT4e3/JBXYjOtrxO7K5ejXTu6/Pr4ZADSj0J7DCeKqYsQHhRXTixj7HPAEH3zbI5ZYZXAF80+arUCrYyvpWdMe8RVdghS2IXdOK9uLiy8cUx5HZWn9IDKnHpSu3lQUIq0OrMFMe5KNRJnUeX3VE5XeAQI91D/zffgcYyvRFes+E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757974793; c=relaxed/simple;
	bh=6N+K9e0b6PL68Jjx7j02Wk+QrLYT3CNxxFmPfscqIYU=;
	h=To:Subject:From:Message-Id:Date; b=b87duKUDkJYyIg8z2VMT0v4Tfdqt6dwka2omFgB+N4CiGPBnine2E+2l7P11Kzl6TwXvSPblOr8SRoAnLHChJGi9ZqPl/W4SovfD3k+jr4CL5/QkRIBZKrlPQ2+7n67fqpKpZbUlgEoAMg5LH6anNcOsZY81YdyXzExy2hAlIxQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PcxOqC/m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PcxOqC/m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A090BC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757974793;
	bh=6N+K9e0b6PL68Jjx7j02Wk+QrLYT3CNxxFmPfscqIYU=;
	h=To:Subject:From:Date:From;
	b=PcxOqC/m2zd6aAWSX+WZBJnvYa0QvNBon/Lmym6ZTBbdygAqSxcJy/DccfJcp3vtX
	 dnXoxkOVYKzDg8w913f6edD35BufTmHZiPLs1j1ykN9WM35v3mn3x7iuiNC5PM7Z6Z
	 MAO6R3oWHbubR7tvn+Er2BYcjqt6+caxnevsWPWMf993UpQDz5N0a/YfZtcliRixGq
	 8aY4Tq2TGKMkNy/ISvikvde59KSj8gQZYNJBEfYDHb7T8+K7vIqziNnl20duu1Ddkj
	 C65VtVhdfBjNynbuusDKS2JmwOB0dPrUe1Npqifq+4pENcyk6TLZA+W4GCxhZeIVOe
	 osFy/X0Iyjfew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91298CAC597
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175797479358.1989.3871252217888025970.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc6bb7107b58e253afc6712cce0d2fb4ea5accf0226b88aa75aeaeace6b39d26
Date: Mon, 15 Sep 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757974793
