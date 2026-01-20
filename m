Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BDCF4779A0
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 19:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768936434; cv=none; b=FLTAzCRKKTqrOAqJlH5+996JQAH3PtYqaFhY0c1DBiwCpkeEBEHe5QW2peK8kXFQoOriWl7EgMoR+44doanfdQ0qEvmGHZp3sY0UD/OLUoBLjFe4uj52Fwxf7j0SiaQMw10uqCrps+BRCKp5SWJs2Uj0PlvijTfqGb49dlLBnVI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768936434; c=relaxed/simple;
	bh=4ErnNAHmJpwFXDYe5Tiz4f1vdVtotDi2vyDjKsQg9BU=;
	h=To:Subject:From:Message-Id:Date; b=VmUfytdBvBtOl8o7LzM9kPo+pTGjVsyHSB/cKjZMQirX1MMdzIGDjm5tvIBK8aDIPuvzWKXVeGCviwfzIOyj4DZRjAgr9he7yJkmGux0V6Ux3yhD8AX1kSifr5BoDbg4+Xqg6g1b0OgXyjvowurZpJezHFHD7/42VP1UHWVfaGk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dStOuKVh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dStOuKVh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACD8FC19421
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 19:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768936433;
	bh=4ErnNAHmJpwFXDYe5Tiz4f1vdVtotDi2vyDjKsQg9BU=;
	h=To:Subject:From:Date:From;
	b=dStOuKVhSj9r++kwLwZcfPGSWC1Ioat7bbE5qBLyKz3FcTxXEdeI7QrSmUp+cBYX8
	 3Aw7rD4Y7sxtDhw+fE/0mAser1vD2UMTFvUhlNiX4PFAKtUVqQ/qzabebW4KKsBbUB
	 7MfKeCABJGrqPHw9pLCEBz2F3I6TNarCo27YS2bg8el7mYj4ybWRSYOZNJqzPmQANw
	 SxT/fKDSSK6e3jcitOnst7WrDEM028TPBPnFdr9ESQQS459BkZMTSdEgs8IQ4OpuOd
	 nEw14E/e4FCmP0ofa4aA0KIqFaPUu43RjtR0cTjplqc9JMcxhPjOiYc0/OC1eiZaNl
	 Bdem4Vzm2CfWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DE24D26292
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 19:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176893643362.22481.3868882383143057375.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a38f115398bbd833fb936bd831eb9e126c204ea84e094fcd22ff43d5657c12be
Date: Tue, 20 Jan 2026 19:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768936433
