Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1737D33DEF9
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 10:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774262694; cv=none; b=qF3bBKOxVMmIxwj9DUZ2WlueF48eXlB4wQg/orzfyD6YVvVu39fgVJood9mQpedFiSIH4vJRtG8JfINv+tg+cSY+zzHw8+RhZ1QVKYG0ZNzXafLqO4sa33CC2AmSdcqX1WeYcKvMkSXvz2cWk2wVeVUlTXTm8w6gwnnkNiA/rh0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774262694; c=relaxed/simple;
	bh=G099DO4SxkLG3t8bxxHgJwQ6YOmE4lZmwI0ZNxPd6MA=;
	h=To:Subject:From:Message-Id:Date; b=VqX0Hush5P6UxPglapP85w/eDuHIRSDqbe581HutHwuIJMj7NcJC3jjAPV4/9voCF5MwR1zMQweKh6vGSKXUAWwDmZ7BvHIjCF46c2C0sj9+m6eCmt4FFugHxAtVa58YoBahs0UHEjJxjOWE/s6CH4r1BRy8UtI7lhEonMLA7Fk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FBDHk5Ml; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FBDHk5Ml"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9AFFC4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 10:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774262693;
	bh=G099DO4SxkLG3t8bxxHgJwQ6YOmE4lZmwI0ZNxPd6MA=;
	h=To:Subject:From:Date:From;
	b=FBDHk5Ml5mJE7hF+GXZ3y1/PQLHjXqTUrMGSeCKukry4RasZu6yjEW2msySUShwV2
	 0jHuiJYC1J40oAyueiA0kMLcpcjs7Zz9pW82hDvc1lFySqMqAmoben3Bpq08vlc0tP
	 JnPkcIxa9bmNijdBeqom1rlGMiEgUnut6fo8FoK9G94FIYCfnwaDHeVZxpryNJglFt
	 e+Lp0aSvznGCZyWzBaoFDfSQUxyjrK9z7i1hdlOalZY2iJYhux6xdmRAI18N9wtsCi
	 wL6rq0kWbRpzioqtqwqej3ZG6qwCyHanqliw1hT+MLkrOdNcW0xp/GtC0ekupPElKD
	 5mXkN3Z68g+Ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9531EEC01C8
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 10:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177426269359.22883.3231222410648949948.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b19c31d9c83dd92c0815149c6edbe98f6fb18cd92a5b18c63f0bc3c192f7661
Date: Mon, 23 Mar 2026 10:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774262693
