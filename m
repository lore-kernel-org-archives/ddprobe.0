Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B53CA2C9D
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 12:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A303C433D6
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 12:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663331453;
	bh=iG8IRj0dbo1CP9rYznaSpaAC6aTq4xFTeWG0+swOrH0=;
	h=To:Subject:From:Date:From;
	b=ktS31U9Ki6Q3jqEB+ZCMpWtBMp1kT46TP7jZQALKa+xXs5ZzM0yOvlbVU7eqdI3dc
	 leR7fmAcbrrniOqqBkJuTCXQbtvaKbwFv+Bf8p2iByy8GCi7IbDAOburZJTw9tN1wN
	 Mi/2jBhQCmSvAnH/NrTzTPw/nW2sEJ33lWcyaIKI1Vok+t90520jqRXZsulwb2XEH5
	 njWLxImvVTO30VW4zpeQhRJpO7hV1AH6mUBbWjtB26oS8HiILKKqS5U3ZpthwFq8I5
	 sliBBRHPC2sICTWUsYibYo3rNmhBkY5nPUNry8JNEqS0GzBYOmuhoSP/gBfnN46tlF
	 2VPLAyla5BzEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 527F2ECAAD8
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 12:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166333145333.14298.2372003692906811568.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf221b027bd3747c5d2e19fb4c3a40adadc12888a32b1f83d0c25e4d51d5ba0d
Date: Fri, 16 Sep 2022 12:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663331453
