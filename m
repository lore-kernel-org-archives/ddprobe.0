Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32A1717C9F1
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 21:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738618554; cv=none; b=BsjrDN/uXlTgvfjNu4fwS6jgiXEP46Zv5j1lScCWuhcz5edRG4XipNl6ndidU9sB7dlYkZq3gOlPUVEAI+Y5vLKSmBGyrLyWTmT3y80Nj+lDpnPYe6nyo98HpjjOTn+GWPAQjnKa3F3JXQ9JPvkobjxmWuUstIOSeGF7xUSs6Mo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738618554; c=relaxed/simple;
	bh=glJCD90UWRxZCFGE8LYXB/UySXHJnh+U/Uvzo6qFfKk=;
	h=To:Subject:From:Message-Id:Date; b=Eos5ckiKELbUrsBjGvU0CplKS7Mo4yYlst8E3a7IYM11jhn1qSRIeqS+8RS6xuOnrkGLXtZQ4EuURUfxsPsIgr6yzSbowk0HTJvIWKNzfobDd/elNZCOLJf1HYhcF8g+xPjDXtzoSVgufGJdV05IcvP/+1k4fxtTQbOz0VJtDqM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fy9urJSo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fy9urJSo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6C0FC4CED2
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 21:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738618553;
	bh=glJCD90UWRxZCFGE8LYXB/UySXHJnh+U/Uvzo6qFfKk=;
	h=To:Subject:From:Date:From;
	b=fy9urJSoEMUBqherH5lTO3G2556KVyvLVBXn8oDc6ADEqUtDGU+5dOR+az/vUZ5Vu
	 RcJTgy0fe+rjwIDqY5EuwLa4juZXU/pT/OcrKc2hgnDjGXpvCcdsMRqkfehFUYX61L
	 sVp6X4J9QT4eO3VDszLTZGvOAtJDg6lsUtZGwPPaUzHRQsgxkPmWjBIx+FUnbJjbnX
	 tW4LI/VRZYuopQxzwy1ZziCca0ukEhIhvsd3txTXPGSnUllgky7i9uPEbz1cRl3oHW
	 5rnwj6Qg2FvZvbKqjKS3+bjxa6RkjBWx4q5L7jaFxOSuDoJCUpnp4aTjagQ7g+ZuXh
	 AylR7vF0M2xMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9069AC02192
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 21:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173861855358.14590.9751905404436452511.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b949ce3558ea38c434a2c917a92a1aa2703eb64921a66511b65e2b117baf367f
Date: Mon, 03 Feb 2025 21:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738618553
