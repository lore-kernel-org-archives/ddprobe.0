Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6A0C7B
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 00:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75D1BC433D7
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 00:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664496653;
	bh=nQj4+Hi5ZUbgJdQ3aOVh+sbphWtQ2sR6hcL0W3FzQqU=;
	h=To:Subject:From:Date:From;
	b=CT4vqPoNN2mUbhliimuAvQZFeizPwT3gLX2pgyk2ZilqGOM5/SqG1VoFt06YY8z/m
	 KKvweAZ+oF+JIJo+jrKBCpzZ84PECPa0OhByW4d6MhlIG0bDkeM7wLmaVrfVxLRMPv
	 Rn4GvJGIyYrJIl4686kA2aoHEYj/0KF+NCz0yZaxPOZoG6JL6X3j9hQZBP7ZQhiVsM
	 TE/2agm60CUksapyU9vAaWkLetnHdSXydGFeufcomwvKbQs88RDK6aAzFcApeb/A3i
	 FVICOqSFoGSYv7WJlSOhjAhfLP87l37O6pbMLhc5OsrdbuzdhoAyWR1wUOuX0cmBMo
	 F3rU/G2PJ2exA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E5EEC433FE
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 00:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166449665337.24105.6119111408842738853.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 535fd87db6e1928d50793d126896906d8addf2a94e2f7447266ee04c8c3dc8f7
Date: Fri, 30 Sep 2022 00:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664496653
