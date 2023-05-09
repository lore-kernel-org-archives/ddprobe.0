Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DC05160
	for <ddprobe@lists.linux.dev>; Tue,  9 May 2023 06:31:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D32A8C433EF
	for <ddprobe@lists.linux.dev>; Tue,  9 May 2023 06:31:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683613865;
	bh=l94B44vvo3yMHxeJVXL0FxO8gqqYB+Xr2LFeNCvmx8k=;
	h=To:Subject:From:Date:From;
	b=NRFH9X68wzYClcQp0JxHzwBogpFkiyVcnESagcpaKvn4anQCPNATnxs4QSSKG4zsk
	 +8QR73hmVMbJFiElbgnWMzTbok3BmkwuggA0hkHbPDbjPE6ftTGdomdjVg0Ofv6NDa
	 6wwTSbE0Y64UDHpwcQHQUjj6czHsrwSUxZ2yS1FymKAc4inbtM09fOfE4Y6mQmrXkN
	 R4JhWykBQS5OTSmtT/VujCyYRHLMBOtrJcWB2LRsgeahiOYXhiZ+l8h95aG1ZEZjzt
	 yoNBdNK+3b2sti3a6hydQq2JRMiJ8nyYup1OwGvkKsE4U2hhavvASLat7f9PJVr+qG
	 94BBmXzRS4RqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5624C7EE22
	for <ddprobe@lists.linux.dev>; Tue,  9 May 2023 06:31:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168361386573.25012.7782105689940655959.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5efe565cf6d9349363884fcc17cdb3b5e8dba7ef9fe1cb051f3e36c486cafaeb
Date: Tue, 09 May 2023 06:31:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683613865
