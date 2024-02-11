Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2618F171DC
	for <ddprobe@lists.linux.dev>; Sun, 11 Feb 2024 06:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707633497; cv=none; b=LQVHtavDaK5YAeHiqzKagJJgx+d1YMN1dEQjhQvaGKvQQZ1a9YjhKBN0acQUIpM44WAWkfAPyLbtpz+mBDxuPEM0fgP2AECLDkwbD6MY2dvPdMhhUubvFNQkqa9I7ARbzCMiFCNZeLwXWAHeS/RE7hu+cHxvMni3+Uy0oPrAKWk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707633497; c=relaxed/simple;
	bh=5ZwdIcza+aru4oJnEbwB5y1QbIMBtV+17yDjrOx3JA4=;
	h=To:Subject:From:Message-Id:Date; b=feGhX3dOzLgcfso+yXiOY+xlvgsyjA7Qcgm0496okexhZN85z1U88dbca0mQuczF38kOgbCjoFzG+bHHGVXxjhqJFFaEyonMuRM3gNK3DPup/1o0D0ZHpBHHNLFW9feiXTp1Amj9e9mD28S3CtG2pcA4aSgiS97FNBYRey0imnc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T9yw/qXE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T9yw/qXE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 951BEC433F1
	for <ddprobe@lists.linux.dev>; Sun, 11 Feb 2024 06:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707633496;
	bh=5ZwdIcza+aru4oJnEbwB5y1QbIMBtV+17yDjrOx3JA4=;
	h=To:Subject:From:Date:From;
	b=T9yw/qXEzZO8eLn+idMAWygRwaANCNTcvUolkLc7KRb8UW1P4rVCv+6S5bL+WVhmu
	 +wwNNfvvWJI4VFFEf6o9fFKP0RfqUPc3uFmZW+Uh2AwdDaV/Ihcl2IRdoS2h6j7BSV
	 Jc9MsJPJKdEgmw+/XHYosKBKcoGymzv6MMetZ5u0uUTTe0GFNtnsddW2xVwCb6RGuQ
	 k0cUqqiK+V9ieivdlMxORjKzEfs8h2wv/cmEagIQIkrbXbGVXDv+EwEl1vSKDitcGV
	 Alvw1LV2+LnHhCujPpRNnPbgYtQb7w1BU+rBX55dPu7V1SvRoiLBX0saoXrGCYK6V9
	 Z5/dyE+LwC0Ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 70FB6C4829B
	for <ddprobe@lists.linux.dev>; Sun, 11 Feb 2024 06:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170763349643.20206.17211722793234733630.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8046450d91c55e76b8f2b21a126395ffb97a0b3798a688bd2211ff1b9cc0ad81
Date: Sun, 11 Feb 2024 06:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707633496
