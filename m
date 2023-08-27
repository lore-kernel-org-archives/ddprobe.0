Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C45533FB
	for <ddprobe@lists.linux.dev>; Sun, 27 Aug 2023 22:34:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0B49C433C7
	for <ddprobe@lists.linux.dev>; Sun, 27 Aug 2023 22:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693175648;
	bh=VNNpKeT22SnErH+YAW23lfbT870mnqpTsn+nqeXcFNI=;
	h=To:Subject:From:Date:From;
	b=Sdif5G/k6ExE5zQo8KV4czaMguzFqhzj4U/gCTpSHqXx7mnrshnCWgE8zQwWVQPtM
	 T0tvg+j8aoKyY2BCUUJe5sFrk+8doLZbXJTZbsAuIfS/hNIQnI+2xlQ+esxyOCceeD
	 jmHEgS0Yu1KO+wxSBrX+wUNIymMMn190JrgZ7N8bfVBmN0YXUEbMjLHmIuLesV/ATG
	 uJgN588LbSn+a/HIlt/gSFLW/bloYP4WhfWnF356hPr3Olv9lXV/D2Ev7cFBYpajLX
	 9EOrkquGxqKe7Wt3K6+fPOQCTtGXDv5bePtz5emPjYBaWGzKDA0W6lWGbKbN8b9PJv
	 L4Ha7e1T2SsFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5843C83F10
	for <ddprobe@lists.linux.dev>; Sun, 27 Aug 2023 22:34:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169317564867.18089.6237109411891946683.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b3f66038cfe2d5e42d4abacbb3d5c075dbeec07667f794064cd52300a009a86
Date: Sun, 27 Aug 2023 22:34:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693175648
