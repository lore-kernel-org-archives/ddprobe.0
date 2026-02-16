Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E9E526FA6F
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 11:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771241094; cv=none; b=fEUPzhKwO8Y6zgFyAUvRK48msFDcbH6y65UQUyO6gKvf004fRjIQ703hXfZahIEnCK45xTPMBqiaMmvMmoTJrFcj1c2Dk1PIyXX+V1H3c6HA+ISkPSo5X1ifZi6hrtQuHfjJJ4kKkw8QO0LciaoHSQX/cA8kzPT+1Elcz2rcal4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771241094; c=relaxed/simple;
	bh=bV8YhgSqBvUsvYjx736B8h2TlWkAOXJyQSCJ/LUUvbs=;
	h=To:Subject:From:Message-Id:Date; b=XOl3RrlnNQhckBjyopoTx5oeBjNRW8tjoRYhQb1+dbet0oGxCoW6nbkP+rizf2JTgP6Q0h2/+A5gVxTGv7q9eHcLp1yG2uRQh2kcum+0WymQqio7p9LP4Mz0Nt+zsvMa8Q/Jnw9/H+JCTz3MhgY4U2MeZl6Fh37UiPqxD/tA6JA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cnOoFO8Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cnOoFO8Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF774C116C6
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 11:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771241093;
	bh=bV8YhgSqBvUsvYjx736B8h2TlWkAOXJyQSCJ/LUUvbs=;
	h=To:Subject:From:Date:From;
	b=cnOoFO8Zt7qFBoJL5Qw36KFsKuQ8l4DZUNEqiTudE6DgwzBJXqo4CEAf2gF9Eingl
	 j1BMJRvoOoGRXs2kRzd/d44YKb/UesYe97aleA9XeebqBSCrKWo8kbI2C++n4uiOeU
	 dLhpFG6xF7jakTRjvRKDz9VJUTGlBre+xJGmJz7Kk9g/+Uco8Glx5uPnajjZMv3hDk
	 vpoQccIRam5Q7gPb4xGytJP4LloiBBxB9ymkoKoiKNtFNvafUnlNl4i2btv2T2HuM6
	 cH4t+CE4OYXwyJi8lmOj//7Y035o9kBX5z89Whl/Uh893jPVRsZNRmjNBL5CD4GUQt
	 RtQPXnT9DQy3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BC60E7BD92
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 11:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177124109362.12941.13438474202124229024.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e485c03edbe8f8fdabf783510d06637d2a89478431ac997cd2279c74d14432fc
Date: Mon, 16 Feb 2026 11:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771241093
