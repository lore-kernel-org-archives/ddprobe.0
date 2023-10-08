Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 639E1C12F
	for <ddprobe@lists.linux.dev>; Sun,  8 Oct 2023 12:07:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q/H4BVtL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C52B8C433C8
	for <ddprobe@lists.linux.dev>; Sun,  8 Oct 2023 12:07:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696766828;
	bh=rqbpB/h33CwndWk3hl9yq0Md2hWQxPjHyrBS8P87FAc=;
	h=To:Subject:From:Date:From;
	b=Q/H4BVtLnElinHNRlBfyNsfyURROLMYlKL/KNqN8coIfbb0oBlOtcZKBXjUlSSBcX
	 Vx3LaKKJTIv4Aa8V5xXdZCre7crzqq1lQNWpFxWm4/lZAPtvpdl1f2rlcO3SLYoOsL
	 Ct07tbqI9N0VrKNl5Pqd8xNe+oMd1AWlk6g22Utgev66vTUWXbnek/knoq4lYqR3fs
	 aOmU9vTneX+EJrnJqQjHpKaVSC9RIYFFPrkE7Nt9+SVu//cVB/tgMmXSerY4jIlRJV
	 JL4gGq7VYcZeFcE/DEFFYQfLkV9N7AHphbV9ZjwAj3TAygT3Fa3MGzRko4wOypwMXb
	 kIemtBw7SrW1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9DD7E95A82
	for <ddprobe@lists.linux.dev>; Sun,  8 Oct 2023 12:07:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169676682868.15810.930283817329909966.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc9a02da1861d55f594a29e0c4f499d61bb53e7db6a8d2ed48361858fd39734e
Date: Sun, 08 Oct 2023 12:07:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696766828
