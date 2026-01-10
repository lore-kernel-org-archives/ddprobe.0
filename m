Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 184532110
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 03:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768014234; cv=none; b=LPmunLZOnJh51GyaFYPGXOwM8i54BfFvI9Q8HOsWbFBLFoTSHVKqTb4fbw9TZkCYo89Cp6iVI2Vkklp3v1y0wA3X+5+Uqxx5o3xZzX2s54YQ7NTGb5WfVagqZ9jCvwOlaQ1KMeTpaaYPLewpPBzagVZAQ6TU7Y4tUV4VhmBXpyU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768014234; c=relaxed/simple;
	bh=/gZlJ6+JGlx8ZLUL8zYGsqZJYDbVEQAffNAgwBG8YJo=;
	h=To:Subject:From:Message-Id:Date; b=l3H465NoHEQrOV3x/e6auRwV7S0WD78CVJ8AZk90LsXWqVa+LY5IuXKHjVXWLKCp0L6eKOisyPhDcAqMdVPKWjOStFPFoZGOWgRi+ok6fTjasa76qU9s6iMQSoi2iBr0XmroiffSt3gK2Su15AgKSNYMEllNLhbIzlbHipkgI3c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A+OmGsgR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A+OmGsgR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0CE5C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 03:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768014233;
	bh=/gZlJ6+JGlx8ZLUL8zYGsqZJYDbVEQAffNAgwBG8YJo=;
	h=To:Subject:From:Date:From;
	b=A+OmGsgRWRDrlO+59D1Gvb7EdccaO4XtMB4tQC5pOtAZ0iqNYlN+H3bzlpJR9iZwy
	 uJ1Pd/seTCNMYnT4ET0TJ2ceo1ukjKNZAxajjMeTMKhUHHCrxJVLSODvVlknq5YgT5
	 jAxGQip2OC054W6veQ1y0/jh9xsMLPthq8e4KXPgbl9K8Y/sbpoKXw/3ePUnbZvTPS
	 DKYKCO/MJ8xdcbOLTmzy2o6ZhDfqNxlPbpW5aY68uHXOCL9pzUySn3XqTuJ9kONsf3
	 KJPKvMnIepZ6VNPRVt0NIzqLG8seWtWsiqocX9B7E87dJnHmPdXhyfIaRnkw7zyf1B
	 YYKEX6cLobidg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2D5D277CD
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 03:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176801423357.11114.13372070603687152888.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 792783c174e43f6df31764560701594b3f9cea0c1274dea848ee9553bad6f1e2
Date: Sat, 10 Jan 2026 03:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768014233
