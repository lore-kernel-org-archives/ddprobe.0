Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E23E97E
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 06:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9694AC433D2
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 06:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673505087;
	bh=t+6fYp1kSnIPkcWctJCTLbwQpLS0FaCzz9xzokKYQjo=;
	h=To:Subject:From:Date:From;
	b=nV3qL7W0FBIFzNk50/UcsWDMNxb9T7vcEygUxjwMYtkoTA0lMwCxaTiisEs5qhRIH
	 h0w9pcsT8G2T+oKuR0zGZ5swZZrgzY7XWc3TD9EJ46EpxKkM4PK5mf+FN7mPubJUDp
	 trfRMEVRozC5afs6qVOoAxuRhqFOi4Xg2j/DEBZEZiveVhMtUG3pm1tYjWSCFMqbHa
	 VEe7AVN0rvAlUY5Cscd5a9cxpT/0N9qGMTTRgdR0ilid4Ii8ivhUmGWXmmb5XjTZpB
	 LRT2OB1jVqfXOI02iSFyX6zf01be20SEGvS5L10V6dGd33EuMJAP8DvSgyFRrGxz2K
	 ZRdxU+UFbNafg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 757B3C54EBC
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 06:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167350508745.4364.5048965936633456289.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0cba3e78d8dc8cdc918e3d1a1d5061d45d2ec58a52a0e0cfc75bf8f1e9d9638
Date: Thu, 12 Jan 2023 06:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673505087
