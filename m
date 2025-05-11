Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C71B25A34B
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746974394; cv=none; b=TF94SDJVcEkpXl/WpUkDS2avJD9y14krrksikRJLwdEN5pRDgK9vJRtm0EQBMfqFilAkWLfaeJr2bjvM2Ktdn8MEugUJwMmksMto/2Pf3hV6xnzm3Gw/jW5XQ9rO49JyjORuwAoTQYp5j2e65o4OPVsGx6w4aZ/JeRx2keoDyS8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746974394; c=relaxed/simple;
	bh=tBbdVa0nJe7ZR4LGmxH4jMr2/EYC9eqEsVxRSQ7Nq+U=;
	h=To:Subject:From:Message-Id:Date; b=CTL9T31BqQS/ox2/2j6duQVjz0WDYvLCKQM8m0lKkYstS8Hbp0yzMMUQWb1ybAgErjKpQiySZ00HH5OAPw0i72PLgVgukZY505mbcIX//tZdfkTaXb+t4gG58ybkPh59aIEEJ3xrfedWYN2QQCdbirlYtWK5rmYsw4n3tsY0ggw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ry4uxAXt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ry4uxAXt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0AE1C4CEE4
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746974393;
	bh=tBbdVa0nJe7ZR4LGmxH4jMr2/EYC9eqEsVxRSQ7Nq+U=;
	h=To:Subject:From:Date:From;
	b=ry4uxAXtx+1b/RBU1+oS3rye5bFn+sxpT06pfp9V4F3x3JfScp8qLFwna8+uPXw2n
	 ysuOYmmoHRw/BrAbEZxcYNN6qu8EcSNKdZB27/65VYY/ACc/XkQkFmrUkIHY9Muj7b
	 hLR416J5rOicTztSQujxmZOqr7ozAVCoqKgUD6pkxuBOxZNyFwsv1Gx3yBLEzaTfZx
	 GfOhUMNPUY/kGujeruLD3UeKeE1iEwm26AnCuMFzcAmzXT9bTbTSRucyOrMjjvgBRS
	 PzRiHyCIZKenqSNnocxWqnc1mxOYQvG/cqVI95bD+kmoPeXvNeT3oOkegni58wLCcj
	 PglvIstlZkI5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA6DC3ABCB
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174697439357.30766.1523365001707740853.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3fd6d638ea094746bad52757724984bb39b1dd8396270f4cc175d315157bf7d
Date: Sun, 11 May 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746974393
