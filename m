Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64CA833C8
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 17:02:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 116F9C433D2
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 17:02:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674234126;
	bh=c3HzFDb94l0UPEPkgejmUOoO1RPTcnNws6CX6jbkvew=;
	h=To:Subject:From:Date:From;
	b=WnTc3VQ44doQSYees/4US/fCRsAytXvCKP+f6TKwrhZJVjq+p6KdI0kwTF5A1a+b/
	 PspKbw8AokPvIq8UYxs0CSJFJFeK3Cxj8PA2lOcYybaXHMvipMV6qMUxBIpALEPJwh
	 UTOyYTja7XMih0tS7jh5KAsJ+0oecqBqgUuX+stv56tQIvPSqdtFBoPUO3nzsXE16E
	 Om4mty8tkuDLk7fIhct6X+4ta4E8v6r47Whfr0w0hzwM63fx95hIkFQmjIwTLu08aN
	 H5WinmFCmEAygE5cqABT7W6VojHmESQksJVvFqWRiIRdj5ejY5zdppEyOUaBixZFdG
	 6VN727hbPOK6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E99D8C05027
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 17:02:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167423412593.27332.204938687070789361.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f8528461bc30794f5e2b9565db05c753189cb1eafe74caed517aed238b55e55
Date: Fri, 20 Jan 2023 17:02:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674234125
