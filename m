Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A66F2F28
	for <ddprobe@lists.linux.dev>; Tue, 22 Mar 2022 19:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647976284;
	h=To:Subject:From:Message-Id:Date;
	bh=MOPVxhIPgTD0gbZL7K7+A0UwZuefW368esxSxXwWKUQ=;
	b=itE+KONQUZM5EdgcKZHgyDOVCXYaTM9yjzujqYxhW3w/cYTm72st4U62Axv6nnIx
	JIbMhP6bMACsuL7fBvYKX2lcexiU/QgrGSkyKiCbRJbPQQHl0n9AvHWMvf62jiKI+z8
	XJ2oqbT7Ze/iZPCU96i8J4k9HKP8MkAPDV1HHwoM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647976284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MOPVxhIPgTD0gbZL7K7+A0UwZuefW368esxSxXwWKUQ=;
	b=DhVq+p3KoOqDrhJd+ImyXmdET/z4iOhjzoTo79hhvbhHtgmB+RsOyDONV5Xt4VjJ
	bgsTyLOba52d36dPG4EPmUHCwPABz73YDil7NAlciKusZbdFI3h4AcgLVG1PlYoMvWA
	m13WiVPlLB3rvP2DAKcbIBtsbx+D+4GHLpwvcECg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb30a8241-94e0fd27-2c79-409d-92ea-a8376cd9bef2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2f4e58c35d0667251ef009a8b42191f6301c8b5f8f4e2c4eab2effd9eb3169e3
Date: Tue, 22 Mar 2022 19:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.22-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647976284
