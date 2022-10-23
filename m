Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC501364
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 01:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71B1DC433D7
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 01:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666489853;
	bh=xfBpKL8WZdBrKZu7rNO2Ltaf8Jf3T34nCfoINo0Ct+A=;
	h=To:Subject:From:Date:From;
	b=Bu3yBUaQMET1TAPpv8rpL/BPL6TbIR3Dh6ierKH6emxVH6MriPHHiqc5CDXG32IVk
	 MhtflvhfwUxe5dQBPPjFZmGWDlDJEvbhlnCzhlAtTwx6FEHW/l4doUjvuinTrq9+6A
	 D8UeaNZttwhAdTTqYuJm8WoqceJXZ81J2wD5VzXhHB5t2wxLXcvz5rFGB2lKvttakv
	 vZxbG9aWsJ+7emlZJFNQoLgz3CvOJsy+JYpDQC6mF3aJlMBymzx4An52nlObgIdkia
	 7eEkx96kdlTCCFaxK6Fq8//yBetUjR6QRdXWVQDLF3NTrHC4+RYT/QdIZNAmS1WLSX
	 Zm+1LDFAJGuzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52382C433FE
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 01:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166648985332.29187.3784579442258112627.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a16c8738ec86d6fc341c295388066535b04395f1c06f1096ba56993068cf6e9e
Date: Sun, 23 Oct 2022 01:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666489853
