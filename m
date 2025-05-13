Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 362EA1F151D
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747142394; cv=none; b=tjzh/mwHZrbAo9z0Y1Q2SlMV29/xd8nFpOA5sxo6I99v1ofoIAs/wDnViucXEeNbFwZ1jzntssNf37MRoVexit1BHvpxa8rYs5CTzMi9TRymAbAaUfAMmzcMtd1X1t3ksdmHcJnP5snXfz0+ILNSBQoOvMOXRKQEoMqLt36GWS4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747142394; c=relaxed/simple;
	bh=qLk3WtWxxO6D9C4dxJbMYD6MWIwItrvw+usoJtYh5m0=;
	h=To:Subject:From:Message-Id:Date; b=j4mHPpdLAxnBD9ppLg/XOYZaFZQrnTNuxnBGzR64kJ6yQZrmamf1uj52fUsa4pwWwCFvproO0EyTvWyA7XjPAxFgfAhk+01ISrzZvDo7C8zjq1Hbup0SQwGZsMWp+r/z2P9E8yMw5DRodKzI2FeDAnCuBI3aPOhAYVnKWLCS7nw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MMmBe7SF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MMmBe7SF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4655C4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747142393;
	bh=qLk3WtWxxO6D9C4dxJbMYD6MWIwItrvw+usoJtYh5m0=;
	h=To:Subject:From:Date:From;
	b=MMmBe7SFOkN+Wo2h8zCc2Yth8insLv5hJurro8y527lOFrvGPCv0bCxNg7JOGWdKr
	 8MZnWrq4R+df2aKFs0TJyHcMiQgG8nUjZEuxegfiSALFrHN3eZGdP7A4MU3iguHkwL
	 5Bozi3NItJIYZHxfgmene2qk71ba0+EifmA5UbcgyaQ3SFquzjjgtzJwvAO8k8Penq
	 lj5qSl6iHbsnUCduXEHqbZkkA6lZHlVzYBJZn7+tveIYztyfD7PLG8nTb56p/aouEp
	 3SC3/sprPgE/cHBJRYDQG9UTXHLml68Dp54rKludZP1YBNY5qwcq7Xfh85EU9I1ibj
	 /QZzirZTHMTDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9390FC3ABCC
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174714239359.24480.10940047463077500246.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b37bf9ba0110688cde5a64fc15b114b4bf214c0237c58ecda43bc0a688904a27
Date: Tue, 13 May 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747142393
