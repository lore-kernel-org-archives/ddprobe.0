Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3657022097
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 11:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782558514; cv=none; b=BGOs5G0pDpmF94FOj46X9JwHrsWhvPlWpDgqiiJp5BXCl5Jtptx0OQSP1WfOjuUwFpIhm3EFMWv3m73E5hVOUUdAszx5vZM1hrZC2co89NiGa0XZJFvVavh104Re8PvFtYg0CLbYL/HapLPwy4z47DsFMv/59u+Rkdab8L7h7BE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782558514; c=relaxed/simple;
	bh=3gnkO3ZDSVZINmvPMBPcTti16qXL2wmV7vAjkA96Eys=;
	h=To:Subject:From:Message-Id:Date; b=fWk/tL0plRzWMH6Bkf2wmAyT2jtWWqS2sMtoT+Vo1YNTEuo2t6EKnIf59LvYkFlmy/JwT01yyn4shpWSd2CGLCT/zBBtnBPlXM6iNV0YJxFwQli5/kPLaHMXZfPUCZ3bZcTWiEaxR66wX04hBxGJiKcWnnmN/HMsYc0gCjb8tRs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oTFosE+h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oTFosE+h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9522C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 11:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782558513;
	bh=3gnkO3ZDSVZINmvPMBPcTti16qXL2wmV7vAjkA96Eys=;
	h=To:Subject:From:Date:From;
	b=oTFosE+hHX/uPxoU7YDlmqO8KuVHwszPEGpATeHIm5s1Fh5KCMMLc70QjZx+YCbSX
	 XB1qJG/3ouU5RWRYjRYY2qqRi8TmK/m/TFDr7520zyYRjptS+g5BLGe1sE4GocZXnW
	 IQgSTsem0y1qqQtbD7LZjcfxjsUir2PuyGRI9sCxfCKhq/2Ck3ZEbp2fd2Wg/LeGRm
	 FwYXUAoH+Ya7gB27MnSDysz3LCQaRZ/8RXKGq87ZIwcC0CC6DdA+6MnYTTlPzBA0EQ
	 BCLpHV+EHzsgauNsNMeOhaT2+wpUDXJhrLJfeBLkB3XwulkWIalrKRvERqFZmXvcJw
	 /VfHHgQeKWfug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E49C43458
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 11:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178255851368.16860.4317082424590199889.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19c229e13279f38ef140234cf37afd0aefe5b4f6d080ad0c33818cb452641bd8
Date: Sat, 27 Jun 2026 11:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782558513
