Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BED7BA5F
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 10:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 66F14C433D6
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 10:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665136853;
	bh=T9xDaJIJ4MavhYK9wtVI/ieQNYH/Tun0qBaaFPKAl0s=;
	h=To:Subject:From:Date:From;
	b=OD9onYCxOcFVnz8gZ0V2GJ/Mp0p5b7qvnzKMfsZuBwljCN/NO9RxvUeTUuA+B3umW
	 UL7yCuZkU6907J0YUAeqMLv279yvx1IDLpVhcP6cLda7+4U5oWgfmCXMaTnE7LYd/X
	 DmCuHMhCMOjc3FkpnHHWxQckmu0Unz+n6wiTXaQ1H3g8Q3FMbqeKvoMMxejW9kaRjW
	 E5kRryjgsNoGpe2yCdX0o96h91sam2XOA0jw0+V5oK5URAZ1a7eK5Vmp8DYyHVIyQD
	 7ynrNOQ2t5SBtU7GhqloIPJZ7SAl26LRYcIXieNL/mAtn1vqpERfGjW0NJtKLG16aY
	 AtTf5Q7eOg0CA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50BD7C433F5
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 10:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166513685332.21813.6052791045675594106.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8986384a47914f4c6e0c07612cc32450947500e9e2a58318b0192eda79b89c9c
Date: Fri, 07 Oct 2022 10:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665136853
