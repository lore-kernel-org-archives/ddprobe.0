Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3ED6EB03
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 17:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B52FC433EF
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 17:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672938087;
	bh=iVrOWiYpklb/QVxN3oHhQfZMGSkEpSwysEnwurJInx0=;
	h=To:Subject:From:Date:From;
	b=c+/BWElBo3ab77c51s2qWhSfUHxki65PhAW89ojIDYWdAy32GDJHf6Kb99gFD/lga
	 ikuDgZHYfumuaBOAD4Ert5Hl8bH0s4opYWoahoXvoTLLf/SKKz8k9cBV0f9W8C9Fap
	 dTY9vzhNxXL0OQbjM4lk3GERoQp/aMzWa86EWlYK5RMxSQ4qZCT2xeJ5EiAWXJQDYg
	 cIY/eNmnkKh+cPnrnzoLFEgCz3I4DUHerNDcV2zaB8NeHlrXHTEnQkJFuPnPg9hjSe
	 Ylb6gS0wer1pPpn4kjPqlzyU5ur0wGE3pN3ZPwRPzclEaxbk/M7FmqWxiCXryqMh/p
	 zdQuFnFipIhwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65DF0C5479D
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 17:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167293808740.1076.12051326104237196620.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22144a5cf40547b23e0cdeb79137123e17d0023998a16df1db6ebe5b197f0b98
Date: Thu, 05 Jan 2023 17:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672938087
