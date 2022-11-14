Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB4F34406
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 12:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7017DC433D7
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 12:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668429054;
	bh=eZ5NxjjqtHAH7CYl642d4z9dnrG+YyxNgtqGkaN6xrY=;
	h=To:Subject:From:Date:From;
	b=bLTgWAFDk/EJ67KZ++By67JcIsyUkMqD+FOlL/URVMBjUnSMSS3aHuP4DD4heqzuT
	 WCwRzcF0rDkufVUWvC9bCdN5ZoPN+T6z87bjgXSs2BXCyFuTh1KEDG+LUffvCC0MJN
	 ksHaPbBYdd1JUizrOeF29qAUOqbahc+MwgW31jXIEMYwSYVc+cvcfrLuSrlgG+gWEk
	 y4GEKjjB4gI8Wo/FrqE4oImF2iycmKemztSQUhyz9LwyzqIUkUqp5rcAqgiVUs3CPu
	 yBRqSHjx9M2LNTMWub1AMFpZdVF06SUqj5yitjEWn6DqeNtOcjBFDFJ5bS9hJB199W
	 rs9jbpieNIhHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55BE1C4332F
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 12:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166842905434.5596.17674283160487518890.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e939705b5f8cc86cac49583d21e759a9ff6b644982204c5ffd389a8787aef733
Date: Mon, 14 Nov 2022 12:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668429054
