Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 321E1627
	for <ddprobe@lists.linux.dev>; Thu,  9 Feb 2023 03:01:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D67BCC433EF
	for <ddprobe@lists.linux.dev>; Thu,  9 Feb 2023 03:01:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675911665;
	bh=wo65qIC+0sSuBjNYJNu10P7XsExZ4C4HSLmhzexOROU=;
	h=To:Subject:From:Date:From;
	b=OT0XxamvzAIUpQAaVSiJ++fOO4mGoOI4/G5hBbdUnQQqIq7Io4tJiJ0quk5pehkZs
	 bkb1CVCxRecVB63UnXCuvr+y3PXWTVLTFJb/pBhr4PYmu7QUG52nKrQX/haQvP3ltC
	 iSzA8k4zAFkBf5jpgyL7Q/Bi66ndhmetnt0J/VbO0+cmwt+I3jfVS7fHdk0g0aINrX
	 o6qruBvhX4LUL113yLSzoSgX43h9ZotZWFfXMomt+Uvu1ovX+Dsusbb2AN+RgU8dOT
	 uffBiqDSAz8XLCuFmzE0HzIqURk9m/fhOglZY+CXWG4vvqJmbid1bUwSrKxXoAEqkk
	 vPuG3SjU5XqsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA4A9C636D3
	for <ddprobe@lists.linux.dev>; Thu,  9 Feb 2023 03:01:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167591166575.16507.6381261418563226824.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24d8e814b270f20100dd1a34a255954d12568b9a5579e4a86613c08bb7e23a09
Date: Thu, 09 Feb 2023 03:01:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675911665
