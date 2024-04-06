Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F30651FDA
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 01:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712365697; cv=none; b=JJgeQNwlfUdd3gdyCh0WabfCIbyZGON+NLVEEQNlsYWyRnQAmFHzlMkeCMOWsCORVbH0MGBZL7xaZwjFpkP9YyF2SHirVWrVuBK0yy/KYehNjOl3DcsnM69NxMbJJ5Irf6LX4hZS+M2ez//kstn4ORI67TwTpqTEEIhnwKF4zfc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712365697; c=relaxed/simple;
	bh=owl+e27FZSaXV/RujJpRjLcULQ03tGffgsxMFzvbqJc=;
	h=To:Subject:From:Message-Id:Date; b=b6WkqmjuRWC16OQY7BY8J0jpP2z7i+iS2sw7XzRXnDsFmwtehZiOD4YCk2mGtgwk9WpCQPRJ3drxX/IChq/t19oiZjL1z4T2uPNVQ5LnWvWwYMNCysu+RTLj9gE+kWPRzek+TIEzHV1QiqIPvqG0cbYhWUd8S/3Df9DRiKnBJWs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p0Z+AY1k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p0Z+AY1k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7EAB0C433F1
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 01:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712365696;
	bh=owl+e27FZSaXV/RujJpRjLcULQ03tGffgsxMFzvbqJc=;
	h=To:Subject:From:Date:From;
	b=p0Z+AY1kZDkI2RuvBllKuPoDwQJc7gzumrwpnMDWc/cTqNIL7W4wycx3lUX4YvC4M
	 lz/br0uVHJrqrKan55OE7j6yHEO5erRv3yP64srAn34x4ztltRwiDOYqrPIO7HKrSp
	 u7KwIc4XlPicykQeii7njKL6pzS42lfvaS1xX7sKaShX5HHoMdlirkGNjaXdBNTvlX
	 IHNWnKXjh3kPsKOJNg5QSNfL+gkhj1Ja7zquHfKHVqwurXLrwOzfjaLana9M/mH841
	 YkrSMOnDMUziWqxbzXdYeD6ZVsFFOfSuZqX6V110PnDu5h9ZnCYxjyaF+BWt2dFkFt
	 HfSdpm7kEjpcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 692B6C3A59D
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 01:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171236569640.10099.8767617618987861423.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8816f281b42fac2218f7535479f0fd7dc030eb4947bd6c2762ed3806ca4a651
Date: Sat, 06 Apr 2024 01:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712365696
