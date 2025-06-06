Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17D312857D2
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749223794; cv=none; b=Is+XbdmZFNQpyuN7jypx2Ot4WkLQ5mvJ1cHdgLcI5fzbHdQC11QKxOVTGt/a1ju2EejKg0ap6yoHKc51ugMk6TpaU1feetN0NojoD1Mf47u/v6/benTdRtwcBMSwoz1Z6Q72SSIzbYNIYmiVsKEITS3JJ1d3i/FXDbVYlvY3Ppw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749223794; c=relaxed/simple;
	bh=BxnYu7UyvxvnEBvNtxTx7O9NFijuU6S3DOOaQ97rqRs=;
	h=To:Subject:From:Message-Id:Date; b=UC8bxwQ3ZpL41mssovhgZHrFnrqHRkrKCo/Gw36+jQqTKOy2yVzRRs5/H0ijJeg/NwHfnWzAxxkF1i3xouMTESTSuyAH5Q6xp9Ea5TdsvzM0EDJ9M2QX8q5Uot/tdaipvcOdO9e3ehiNkC6gQb0ZgLKhENoPo60u0RlxEj/RU4A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VxpJCiNX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VxpJCiNX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2920C4CEEB
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749223793;
	bh=BxnYu7UyvxvnEBvNtxTx7O9NFijuU6S3DOOaQ97rqRs=;
	h=To:Subject:From:Date:From;
	b=VxpJCiNXBC1JgmCEx8TL5GEIvoyTACBgAzFwG+8fh4EmK16Lj3xQHtAsVLgLLxDMv
	 gkHXpqjv9j3t9cpSUMZkJiqnAbjs9MZs4oNdppe0jCRYt37r9SAUuGoT2xhJ9RYqPB
	 2/bpvvWH+aXGw8OU3Eto7+r1c4i7gO9G48yMOaV1i+EWZ19BsvPuIvzfZfrSYlCMo1
	 ZBZSjz0m3ygr25RG25XedWJPmbJDa2Qm0yw488mJSado1uKPSIiQh6m5PcoU2RaLu1
	 9PsE+FXiMyjunwSIgg1hJ6MRTa3knBGS6ZtKNHU5BK7ZYBu8kufp0gG4yV1mYHDuSM
	 +EstKlDKG66+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F0DC5B555
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174922379359.28188.8405921859311997388.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8dc9edb23afd164f975a141e5990c650866c431d85d64e94d75cc2a6ead746e
Date: Fri, 06 Jun 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749223793
