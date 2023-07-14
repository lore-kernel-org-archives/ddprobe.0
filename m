Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5817A20E8
	for <ddprobe@lists.linux.dev>; Fri, 14 Jul 2023 12:51:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB7E3C433C8
	for <ddprobe@lists.linux.dev>; Fri, 14 Jul 2023 12:51:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689339068;
	bh=NrOty3q9j3Tc+EgYPiJmxY0nTnoBnj3vMTq7ANP/4mI=;
	h=To:Subject:From:Date:From;
	b=a5FlIAhwVCTzZHyrigi3rO036j5vI6IhpkJk54aVkaKv0Fvubk29p+zniU4GMo6Ud
	 6kG9gTcQIvgep5nE2xzmlE6wLeDQDpOWxgc9UBNUnT9BuEyVdqamTWfQYz8rMfRNCs
	 5PJ/t1ag41wImjv0TtjxUVcskGGid1/9Teq4UGTnIeu+kNIwof0kqwE4tGf3tenyBX
	 XdBXlIV7X29JAhaKjJBZoEStCYKpH6X+VHovXc+Q8awZQuqa08ZDgoi2xo+DOT55Ra
	 X1kJZvHRqVMRlNGhSjJJ4p2q1aDuy42L/bfBLsSYauiu5J9/kySwQOFpT6EF9R0ad2
	 dartjfvllUETw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B122AEB64DC
	for <ddprobe@lists.linux.dev>; Fri, 14 Jul 2023 12:51:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168933906871.11469.14094769446877300920.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d354c91386ac7b1774f904b3f42b98ce126c6f4e6846c4efe5954aa4220dc5fa
Date: Fri, 14 Jul 2023 12:51:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689339068
