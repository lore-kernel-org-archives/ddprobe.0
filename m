Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51867417BEB
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 12:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787572834; cv=none; b=GYYnO/gOlxHJh9T7cdcLwzM6t+pBDKYoJQDw6fd5Nicag/Ys8O8tq4EY6l5/zBtAmDOrwRut3WVuYuCxVwNRdk9EUQ33+v8CSmonfNqsn5XLVXyYU4ZUETrxfA5QsBU3TfymdB+59QI784LL6Kom4e/hdoJevNmOW5OEXwFuV+8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787572834; c=relaxed/simple;
	bh=M6Hb+Nx1nhrIQsm7ZdwVUBBV42XRyxPkS15yMUqTe/o=;
	h=To:Subject:From:Message-Id:Date; b=jYwrsXHoVi1aA9dGI5YaTgdyl9sN/3um6k9AjVJ4mXIERkP7HgF9wcaNMlCna3xpNq+BaJuG6m1G7l2mBW6XQdA0SvSQ06gFXyPDg2PJC2ddtQQ+vadHiriWSWREVSWll1RCZMzRa2MTNwfeNhYWwBq9lE8XAZ0kyK1wFfqE/KM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uJNBlXNP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uJNBlXNP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9FB8C19425
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 12:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787572833;
	bh=M6Hb+Nx1nhrIQsm7ZdwVUBBV42XRyxPkS15yMUqTe/o=;
	h=To:Subject:From:Date:From;
	b=uJNBlXNP0UO2PRaGmMfhPJofoWISGB1zREjDFDGmaWViOI71oMkUV/ncgDaAX1yII
	 Q3p3rOipCzojmUe9WKHm4Bt6MWgq2k56AkQwtNiaI6nOTbaCPzQsPBp58T0ucUuuFD
	 oOKRUua4zLGscH1oZuyEg3R+Wnq5OWDLCuJ8t0jd6tPJp6gDLN4Vrc2dhexgvm1HFD
	 WwJ38avQR8S0wzbQgjRLyGxGqcGMaKOEqxL7hz5aYktQUGq+8ebfItPUwy7Y7CKXub
	 U0wkOgXcgKc6OkJpn/MjhCAMjZjai1PXCO4dTwKUjvM8O6ZXzwVJ3pNVxhJadeAn5f
	 PcxfSfYtjZNLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4E1CC5DF94
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 12:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178757283372.26107.2544072286860759603.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff445b7ba6bfae6971b390fe2349ca3a7dc7b30b3ef7074e57c27276d9a5665e
Date: Mon, 24 Aug 2026 12:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787572833
