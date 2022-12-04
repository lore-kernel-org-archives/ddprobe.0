Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D20F117C1
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 05:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72674C433D6
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 05:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670130654;
	bh=nrR6AET9JymZjsW7ll6rm/62BxWp1TnxhmFfqy5DyTU=;
	h=To:Subject:From:Date:From;
	b=owyBiWfvw71y+ccxuZo0Qm/OfqpLcU8D8pfha9X4Mha8gN/QCuRUtYbk+oxdp5Iz6
	 XQBk0CzFa8aKG2kJl2Nz4pIfXY7XFtQL5bk6/rzbWoFAKrBl0wJaYVVxxxjL7IUzE3
	 WKvfl7yn9HV2dMSgwOhjZJePdJ9vtZicH8UUnUo3Z3mT4/MkUopk/az2S6ugl5pW5Q
	 fbAtNPsgDpbdw5S8IzUZraSSlFH+LebZV5zPpSA2hgrzD2jWq2ox1EOYafG06D9EAy
	 3QV8uWtYF8Xg4NBuCmOVEduEaxfqY7KkMrkMJ3YtWn8CNOC9A4Aq02ve92il2aL6cY
	 QNiwFkF0LSpaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56F79C4321E
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 05:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167013065431.24300.14813756316603986236.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c261e54242592071250a42be0b896a8319e2e3d90fff2c5a45e3cb6db360fb3
Date: Sun, 04 Dec 2022 05:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670130654
