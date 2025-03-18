Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 370CE1AA1C4
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742270394; cv=none; b=P1S1i9AIDMNrdKNbTD5EUSJaSGY/cMKpETAB7KonIBjKV0qWP/8QX/fNzItgk20wCXhFp3o5uA2om+TrNOOQcU38E0LalOSU68lEg86So3mql5JPw1G0Gh6hyDxy6binzn/nuZWgqIKfF204XpWmQMHouYAC7FQmtOk1PXLJ+NY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742270394; c=relaxed/simple;
	bh=aQPoBplhTcIIQzfSxWvb/dnVPbzr8N5n8rGrx0tMrDQ=;
	h=To:Subject:From:Message-Id:Date; b=rY1vTgZ0+UV+NX4mH0bYdSomo2W52pDVPwETUw87FZZV4thohtYlpAg+c4ycLy73Ez13ZuS9IouzxorVquZ7JhE5VV0x+tY1PSQjbTMBU1qg9aao046CvTB6sCx8qTe9uyMOyodbuyBqeCwpUmID0SO2+/ll4zSFTPWAOGK+9AU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BfsmA/4v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BfsmA/4v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB587C4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742270393;
	bh=aQPoBplhTcIIQzfSxWvb/dnVPbzr8N5n8rGrx0tMrDQ=;
	h=To:Subject:From:Date:From;
	b=BfsmA/4vWTILv/GUUZ2VXV4CWuEUVbQTsBwwrs9kmCmTIdGqRuKHJ2x4xyBx+9heH
	 6XSt1NUTFYaFaU2Qy1/fVglrlKTbVzIuE/E4IaPjoDH9EhB90ZY5G/d8YrfB9V36av
	 ek2vM8Y+jYWnO07mVS/QjBMu+hKCkTGFUEWRjfNfpdDPfw8PMXggAc3bhqIoRilZn8
	 Xt3TRoHNzWdQm8ScW854lDX3gTxVd6SBajEzNbm/c6jckxLzfd+fEvDMR2dtNpQ3XO
	 G7VVzh/AIotaTD97jfBpSQcosqzYIgWlEWkEbw+MjY7q/fA7FAKynGqacgTQmY7Jig
	 q9PXLPd7jU40g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95B85C282EC
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174227039360.27138.6747737449260880354.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 892491809a7b33908ba8f62b4aecd308e1f0fc5c3bdda0872e5a33114917dbf0
Date: Tue, 18 Mar 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742270393
