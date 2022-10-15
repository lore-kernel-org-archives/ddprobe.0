Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E998F363
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 19:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B9CDC433D6
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 19:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665861653;
	bh=HqgE7AMXfUv5Q0FFjP0/IgfWSta/KEs7wHdxrqv/DgU=;
	h=To:Subject:From:Date:From;
	b=sXHDiHVDMgBkL93EcffuZdDdgCOpXEdBO2XoLbFmLCDDST6n6VdaotQRlvNjw7Bad
	 Lzitj662e6K3GWM6KUMPQK+/2xKaj90mJ9K9X2n0qoWssUKmJ+a5f5b48Nw5Rsc6YO
	 awwnLUQ5dorxkeI8bOnwN1QXqSf+upeksvE82c7GrlhiByjCYgGSwwUD2NhQHb6ihr
	 Dfprq/g7XaHmMTrZLUFApRW++MBZL4oAhG02GDLETS61qwvVA6/k/Z5oIurdTX3Hq2
	 qLypFAad9gfEtlXOaGMxROe/x963zZchXp4yqjYJNnJdH7myrvQbr40yFaAe+udM50
	 ZhYWQmZnv9/ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D8A7C433FE
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 19:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166586165335.8667.8449741221790723185.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63a61b65183c06b7eb66718c765f569168772cf08c6c171f771e10d863cbc0d7
Date: Sat, 15 Oct 2022 19:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665861653
