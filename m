Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B273946B4
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 17:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68BE2C433D6
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 17:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664299853;
	bh=+d8hPs66nx3VrSKLQaJ77uBft2PPiveGxt/mO+929BE=;
	h=To:Subject:From:Date:From;
	b=KqCglthmbsad8SQcDVNM1VBDKpopcK8ee5daUw8Qn+1GmSSMHXqa4jVnmjFEDMdy1
	 z1RJ4AxjLPZkXPzHyxE285TbzBJ43Mbop9UptlHs+fhO0lIRDTCoxxay8DRQ7tiZyQ
	 M5CnXYF2msWBXODAqzhOt/9evmzb5J+NaNnXQG4+LTJ1va5lgMyXTOEq1Aelz77lIi
	 +RykeJyqyplq955IacKf4NrZdtMQvy9zJ6nXrm7O1S9PtxNp5Q0U9tIk9MEMGiEbPa
	 X/80W4slWqvHHmea6kjPVmKHCdfd/3pQpes0b1ZmNasjlmCeW/vBf7y79GfiUpOvAl
	 /zhi31nLqRUFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F1A7C54EE9
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 17:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166429985331.3729.4142078454978724346.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92a8c6b917a8307c207d490edb601e560b31f8d1ec0773c4c767323bfd0ddcde
Date: Tue, 27 Sep 2022 17:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664299853
