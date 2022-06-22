Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0799B10E8
	for <ddprobe@lists.linux.dev>; Wed, 22 Jun 2022 09:20:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655889659;
	h=To:Subject:From:Message-Id:Date;
	bh=rtRWPJDxbZZ25jnlVlXWRpnNFuMPsFRCIKDJ5J05Zls=;
	b=g0IoICvUOLAUQW8jDtA5aYIi+3FHE4WNDxFWhydcL4bpZQ/xW+Vzhq2+5S1XfIk4
	mEwnOBeorqKiTRxNCvRuFY42AaE2ovShHr5ngkThg4broy0FU8n4E4iBb+rb0y67kGH
	tQC0HSFAmHtW3F9rdvW2n360itklB0WE5cIbs1NY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655889659;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rtRWPJDxbZZ25jnlVlXWRpnNFuMPsFRCIKDJ5J05Zls=;
	b=NYuRMiMZ789ETEftmW74HfPsfHJC4O/SGJ67435YuyeJTipqMk+bpvxKjBQyofUN
	sz6ssvOyRmAAq37hk1XoZEELXkGt7SSIpGs8mp7iWLnr/iPqVWzRS8Eh6ENbWGmfTYm
	2rrq5apcrF5gtRPhVo+bhzesYc0XWcb5vPJfGUfA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101818ab7059d-1c681603-4f63-4fae-bd93-1455070db4ba-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6cbcdab9d6bee4611372c04a1ddf2b828c9c6cc316081be4fc307a52fdc51e48
Date: Wed, 22 Jun 2022 09:20:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.22-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655889659
