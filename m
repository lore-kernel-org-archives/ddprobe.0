Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B57F1AAE17
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 13:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769262834; cv=none; b=Vd0C+KA4dDOGfeWoBD8cA44rWrBVaJQbA+XTKLyLumovNIzwimlhvKmtvx0uMJ/OPKlSdIiBN+urEYi56+/r0OuPx5eBBosKf0j9FXdWDlI1JE84NyWhE4w2EYSRhNvj9A/zGQdmFpjW2YAbrTcJwjg4T0DKFYvcH3f9dSKG9WU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769262834; c=relaxed/simple;
	bh=PZpkyrnhSYrWQDdWhNyGKK/MTxBB6lar5QKFqR8VHD8=;
	h=To:Subject:From:Message-Id:Date; b=QS84R8THWEF7CNGkr+DKEIdMSZ6lfY+/h3m01VDV//ynKLUJAun/FqdRD1oTsbAimJ/fcixnTg59GR1zBiIA2uIk1fBkYduxer21SgZ7E8e0hp9dBxwDU+TQ4UT5oObigoH77B6J0yxSbUCXKPavdSZf6dMOY6dtuaGuxByw6VQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NHjPkdSg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NHjPkdSg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5453C116D0
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 13:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769262833;
	bh=PZpkyrnhSYrWQDdWhNyGKK/MTxBB6lar5QKFqR8VHD8=;
	h=To:Subject:From:Date:From;
	b=NHjPkdSgxDHgZWWaqB2QrC5sHhvHXV+CqSBlKZm7umK7opppLPXeof5lrZSWoJQ+K
	 1o1040rbz/3BzA42VPUeYOlXz8kIlao/lW+MJvU68phlFDEaJD7WLJOSuZQJqCAtoB
	 XBKzlEwmpN27KV1wj81+YmleefmcA1SZe21bEoHa2NaNi9mLhYJNA6SBGQXzcS6RW+
	 THGr0fMov7t/QxruBvtcS/U6DX8Wln9nDj2pVzCqHrpnknOcd71uqCxD16362BpNPE
	 j9YdcPAkemC2JfSn+FzVVqtA4OuEIwXEyXPTfZwYdJMgC5mCXeV4Yr/+9IvhMOObMU
	 CGFvX/h8fs/+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90330D715EB
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 13:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176926283358.16773.14488261562031317554.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1bf30bd224158c924d53d381eadb6bfe596bd8991a11dc4a1dd01aeb3557327
Date: Sat, 24 Jan 2026 13:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769262833
