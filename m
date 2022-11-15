Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D78DC1867
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 06:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7FB97C433C1
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 06:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668495054;
	bh=El0MUP4fodN+2GBfJ6HOPXGQJ9hzjeL++WKm5i5v6sk=;
	h=To:Subject:From:Date:From;
	b=imRD9m2XBou56z1QCp9tJbFbxKSIS6NUSXHl+cVlg5LFQOqBEHau6hWJp/YZ5o9Zl
	 M6HAtknWocFocWw1Pp4rhOxB70Rw8rdbd/iZYFc0x5aIJcXQb/LRvo8Aa0exRzvbCc
	 FTEWK/RLHHJ2jIgadmj1d5vCRQ83cUZQ3x1Jv6JxsXfjut/KlRGC+7nxQKPNzXpS3E
	 j9wG6At7nPtDinVKYcZSzdU9Usmsx+1pq64efItzFzfUm1hmrZ3CuKH/qDAC0eQIwp
	 XdnWtUjvzERlahd09lGJmqOG4ABFIWNSBeZKrzhRtfZRoDSrMhU4WHLQTfYwaFXvw3
	 3K8oY+DuOQtrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6226AC4332F
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 06:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166849505439.14905.15581696966774731966.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 653296608814499648cccdd70ea3fc10d2c7a29e41688bc0540ebcfdd41b32fd
Date: Tue, 15 Nov 2022 06:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668495054
