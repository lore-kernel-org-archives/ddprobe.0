Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CBB316C6A7
	for <ddprobe@lists.linux.dev>; Mon,  5 Aug 2024 18:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722882954; cv=none; b=UtAt11LLlGYQvM5cepYPckFtfUz5bCeN/zELDwiZII6OF8/kquTGOk+rTdhtHXvJMAl7BrtXUS1uBaGj8L1B7k6A1bQF8G7EkRinDKc7/F/71TtuklkblHO7jCPy1wpo7sLYq7Ak8WRw9L4lrbFCMaUy+/MX4mLI/7Fws+4/if8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722882954; c=relaxed/simple;
	bh=7DY79oXUwonS30Jzi2RBYPbxRXHWw8ZyhjUQ0tqtL2M=;
	h=To:Subject:From:Message-Id:Date; b=cYKmv9t37Lpr/LXb6HGqgtk2ilKlb6DuSuzw872/+dWYeQoXb4ge6Tnh5YaOK6MnIJsCLL6JzUD+dMu0lmrks5m9QheEiTINzno6UoXvxCvGcD2motBw9o1BwBtA4PooUluNJ3hP3Bqj1JPfvCg1WwovI7oca+ZiDTFjg2aelPQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y72KvuIU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y72KvuIU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B46A5C32782
	for <ddprobe@lists.linux.dev>; Mon,  5 Aug 2024 18:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722882953;
	bh=7DY79oXUwonS30Jzi2RBYPbxRXHWw8ZyhjUQ0tqtL2M=;
	h=To:Subject:From:Date:From;
	b=Y72KvuIUZVlYRRX4ywuZNd7AWKQ/URxmspJB0/b4JcHWVOEJY8eN+o+x3HJp3tlmG
	 8DP31waaIV8leZdupAKpzv6wN9YjJSJxG9lfE8JcFjXPX3FcUPG/Tj2xyXjW1hFdiS
	 cFWeESZjnV1yjWH8BpOTV/FVk356a1Gtc3lLUSnEYM0DELhhdHIV9Kf08m8a5LUwul
	 7asWh1AEDlLdaiGSk3xAxYmI0378FWW5qKZWLPORNtuDYLgdoX2pULRw3fHV5OeSXm
	 MsoKdmYJzDAu2nDLBLfr460jE90JtCyBNoGY6ei3P9zb5Kk5X40uqCYn29TYeuF5JE
	 HupovyveVo3kQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C219C3DA4A
	for <ddprobe@lists.linux.dev>; Mon,  5 Aug 2024 18:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172288295363.20011.7302118822865094583.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 618341237492a53ab0990d01fd7c466aae2fa1280eb39781010775e7aa6dd756
Date: Mon, 05 Aug 2024 18:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722882953
