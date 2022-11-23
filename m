Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6BFB33C1
	for <ddprobe@lists.linux.dev>; Wed, 23 Nov 2022 21:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C9D0C433D6
	for <ddprobe@lists.linux.dev>; Wed, 23 Nov 2022 21:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669239654;
	bh=isCGU07gh+OAajt8MVKEk+4NfHRkPSS0ikYymdS+DSk=;
	h=To:Subject:From:Date:From;
	b=lkZclmqSODOy16ZkrljIymdtouLGmiUojjdYctcf+n7zFQ2ZXojWzsLwpaJyMHmY9
	 zlgxNpwxr66PoJLtwl/C18vG3uKr9c9V02Mw2uM0cUqTXW1MHG0pb2ItxmNWb9Hrn8
	 26t1z24levNNwjpmbQnD8Vpdh27cIx27zoeu1AwzdqcPyB8OqoJGXRDu5De8Th774A
	 A65ts656H7J9Dsp5JAypaHUSyFr+slL9wKK+h21vSXhZvIz9FDP80Iwi9bL6JMUrGq
	 zejyyObqsqPeD5bDOwaNmZUYPkudxGyd1lhkbzPZmmPo0OQdKrgfXQXq54lcTqaPFl
	 ignxsjqzU3Ycg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51592C4332F
	for <ddprobe@lists.linux.dev>; Wed, 23 Nov 2022 21:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166923965432.29629.2947394893674634046.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9434a0724fc4c5530d235555a6855e11b6a886b5c6060d6b5e0a6a76fbf3fec4
Date: Wed, 23 Nov 2022 21:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669239654
