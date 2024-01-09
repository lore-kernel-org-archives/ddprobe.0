Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0493439842
	for <ddprobe@lists.linux.dev>; Tue,  9 Jan 2024 13:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WgeNb4O9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7AFF8C433C7
	for <ddprobe@lists.linux.dev>; Tue,  9 Jan 2024 13:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704808696;
	bh=6BGaY6zeTuxR80CcpxLwqraNj/zz/su2owuJcPW68RY=;
	h=To:Subject:From:Date:From;
	b=WgeNb4O9r6Tnt/ZSyCZsvaulmp39KRWEblQj7Tl+JuIYXRNgA2DqfOqplNjQTeQ9e
	 AtF+O0VDZGFsU/irO86ZrDEq79p+JehyQOuQ1vgbWJR40GGVE5eqtLArXv5bpnphSZ
	 8XPlO/HCOuRlV+6+6knshWdc7ljfNWFHAOqKQzDcWXOgML8KfD4JO3nvCOEOGDy9UW
	 tVj2er3IbDOVVqXfaDYG39lByRC0eq5s9wx7R+CrbyEpxwFwM6kB9WbEDqABOkunM2
	 May53o5+94NlPqSgU8QCwuKOK9jo4YuIHoVsjSBfPU1Nmxf1HHMph16IidbNuLK9W+
	 D0/jD3RFN2QZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5EB08C47073
	for <ddprobe@lists.linux.dev>; Tue,  9 Jan 2024 13:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170480869637.6302.3428391135416593683.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 588a3cd3f51dff3e9e25dccd48f6d9786881afb5a7e0997e7a3e7525d3964724
Date: Tue, 09 Jan 2024 13:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704808696
