Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5C51EA2
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 01:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C745C433C1
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 01:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665192653;
	bh=Uoo7hxrgr7PqBls+HXWvmFUnoRbpCnoOgElQWMjrcqM=;
	h=To:Subject:From:Date:From;
	b=BXotlfUVf+0JGjulCioS3IZ/666VmSjzRbXN7FzHbO9yMODNmqDdTHfStZesSOb0U
	 ofYYknhBZ8XQhKO/COnHsn7ylZEDaMCopgpDuEjxpEbEcXFhUJWmNbqoD/bi8DmNGb
	 FOwXHFYue6rYAgsbeTqvBll7XCDpiDwjVQr7vQatarTs5xrBjTh2lW46zTWsqeeZXD
	 DnB9b0dc8H6DmqQTHG7Wq0RvSFdkfeB1Xli/4ZE2lTNOOfWbw1NpnewZMIyN3MW9ej
	 pZ/NbFjKdFcJmT6BPkUbQDnP40h1pjXR/2ZjdYCi8MMg3sLwlMDBlsAGblPAKMTfyd
	 uJFGwCChAPwug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51641C433F5
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 01:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166519265332.3596.2190927567676874695.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6cef89f5d9cdf3264cb0079c1c2e20ae6592b2831d8a1d7ce2ac386ae7d6e1d4
Date: Sat, 08 Oct 2022 01:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665192653
