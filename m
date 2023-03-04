Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49D477E
	for <ddprobe@lists.linux.dev>; Sat,  4 Mar 2023 23:37:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5499C433D2
	for <ddprobe@lists.linux.dev>; Sat,  4 Mar 2023 23:37:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677973025;
	bh=+AIVfloJ1hijJ8brCCJ3Cb2snAypWRscN7CWnvMJIRY=;
	h=To:Subject:From:Date:From;
	b=twJzpU+ioe6ITLifsxSItVwj2/2tN7DvUNUfUASZonH6Q0OMOjNKh6PS3I2w2DVO0
	 J9MaHDGR2lNI4gGZ/e0yjdDlcN/q8i8WB7T/r1/Br4LXOIh/Y6PcERNrYgPiBuL4LJ
	 HD3cAF8q9hHjzc+J2+Gh8bGqS7/qM4n/B5hIh2eQSJsjPKbSApnN0Ld3buHS9wiepR
	 iUFQCR1Ru8m3o2A+nF1QC1DK9nKGoUOTmc64ePoW5jkfDuQLBz+lWkGGSTcvHVbk3B
	 fw5yYFuzGxzSZRx48/I0Ka8whv+/5+mjfplLpKfZ9mPyunK6AjVcQkP5cghu8DIHkF
	 A+0U3luiUK36A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3264C678D5
	for <ddprobe@lists.linux.dev>; Sat,  4 Mar 2023 23:37:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167797302577.7357.15684810596351105647.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d68abadbc7496d58e0b57fc7bbdec9c9fb24af80c8f1cbcd8268d1f66e7ab67e
Date: Sat, 04 Mar 2023 23:37:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677973025
