Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02CAB1F95F
	for <ddprobe@lists.linux.dev>; Wed, 12 Jul 2023 10:49:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC1EFC433C8
	for <ddprobe@lists.linux.dev>; Wed, 12 Jul 2023 10:49:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689158948;
	bh=lNSMciOhoQxAYnAevyEUvs2E7klUvxybUrGS7tARhEg=;
	h=To:Subject:From:Date:From;
	b=uxRZ+KEeGjgCGJVblC5o3ucbd4ydkFlnU4IxQ/Jgfzc0+1PfJ1nJ6Rf354k+dwQqI
	 Olt6RACPhEtas5xFj95dmvVyuLtoMQ1FpFBLE337CyK//mkC0Bs68rZyPM/4nb7oEO
	 E8Z7IMK5wzvPlSnlOjoGWZMAPDpmw1Mf+1vLs0l+V7GFSOYwZnsQCtNTBFnXz6OM6+
	 hxBkUY8tx6uJSV2zNRIBNKdE7UV5NodfVK+TtoQeDzSAyKlSdnQrktj0WTXQb9pfaf
	 VDfZ0VfUsJWhkI9T4JKaLUtvN+wxLI0ZtJy690ZA3aQol8r43qVmVwvF2HLLoqwpu4
	 eN8A9jRybLVxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD56DEB64D9
	for <ddprobe@lists.linux.dev>; Wed, 12 Jul 2023 10:49:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168915894869.13579.12429695750997772686.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16077a8dea26396a303bf7fb67861a489e077cf1c7eba0d0f3ebe45cb7c1b278
Date: Wed, 12 Jul 2023 10:49:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689158948
