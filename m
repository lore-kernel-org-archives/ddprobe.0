Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F197221100
	for <ddprobe@lists.linux.dev>; Thu, 23 Nov 2023 09:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ctf7raqh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 807CFC433C7
	for <ddprobe@lists.linux.dev>; Thu, 23 Nov 2023 09:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700731696;
	bh=m6c1als4xR/vXfYyrQcjXoHs/+vxSUYue/ZlfR5BBNI=;
	h=To:Subject:From:Date:From;
	b=Ctf7raqhj4/DC2UAlvRGAUpp/5o7/f+xVbRNS6b457HomsmFH412Z86Aa7izRpofN
	 66/EItzB0DVeCV6rxqK4gDprkIjq/+uJTOZXHrBjy1B/epzj8n7AkE6DGx77yJAM9N
	 Z3TPd81jbwS13eobAo+9gMvoVq2+/MQihAqSLyMdEQpT/6UOPmmKHPg+6Wr7hZ7Pmg
	 YUu9aQm0qFBWpUNiFnaItsYWs+3VYYpCJXrt/eSVCBcWJMJwQMLzJ7f8tbYrvz7E7d
	 5Ni2twU3P4C1Mki6sAwkjR9xnmPW17B6h7QXXZkHG51KWwqFJvfu0WVBp5aCVwO++n
	 NgdbMGPvJDIMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5EDC7C61D85
	for <ddprobe@lists.linux.dev>; Thu, 23 Nov 2023 09:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170073169638.28117.6490124913492144876.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 537fd4d34b7e2b8ff89a787e597a50d58ed75e15d1597f32fdf5d07c875c68fe
Date: Thu, 23 Nov 2023 09:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700731696
