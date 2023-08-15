Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4068617F3
	for <ddprobe@lists.linux.dev>; Tue, 15 Aug 2023 04:43:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C12DDC433C7
	for <ddprobe@lists.linux.dev>; Tue, 15 Aug 2023 04:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692074588;
	bh=MHxbOYcGTmXu3NjftmmyezDUxnYLzoglsd/GPaWUBHg=;
	h=To:Subject:From:Date:From;
	b=ZOmMMjs1RHxbyb1Ee/Z6CdKtzmZriabP357EjjbqfJP9uTsykoZXsw6N/QSmhcsOW
	 cOeWwyfZYXs3sRJ1AEMg0ACqoI1rZi76OJItqMjdtin0pgFZTwbchD7tiL771VZGha
	 b8DvLtYj76+dxc49EJNbMgPi7/69tyzGHBPBvjWeVv2EbI559L72lLfz6W52/Lrwyo
	 RMBxzvR60fKBov5Zu6MmVQoq9O3NqHEfUNqVhdX/X6BAI3i4PaltX7+0fHX7uL3J0C
	 SWPlEEjeAs2t7KGzHugtcweW/C4dvKKAjYxD0d1WCDpI+tenYYcbAwVx3htk1NkKQz
	 MuLmJHgJaQmag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3ED0C0015E
	for <ddprobe@lists.linux.dev>; Tue, 15 Aug 2023 04:43:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169207458866.6560.285133068954529909.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab9e6e38e69228f91e7bf3acb4897cdd9895e5fd84fccca5637062988dbde19c
Date: Tue, 15 Aug 2023 04:43:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692074588
