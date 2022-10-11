Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED7548F41
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 05:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8564DC433C1
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 05:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665465653;
	bh=NT98BSTmFyrxYAz7djqwSZGyrHFxY//QoL5/t7KWtv0=;
	h=To:Subject:From:Date:From;
	b=kSB1EdURBy52byLEY7LnwEhl/ZiLy7+lPDQEl878dzJ8i5pc7F/VhEIwF5h16eVTd
	 sgnZdwWwX3qxFbDgf6LOD9yESBqPuBE6GCh7z9KH7iLVGF7so9DT+L0x0x3LVXZcXV
	 avJ0hX11rVKuVnXdHJA2s3rkj/unZqy8g5ZV75k6K1dSIc+BYihuMTUODsxXlsbOfv
	 zOVYafCvi1Kmlh22BJ5uAZa81ewahrN4Mix9Q7xuAF63QX3k17dMofdsVKhkMJqdG3
	 7F9puIWVGfN5qAr0oLGKp42gMpsSqo0TcP9IJsNZpkfsDi3FL85a/qARy0acP+byhu
	 KSoxlCDUljsRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69769C433FE
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 05:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166546565338.21848.13120724995756049378.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81701608c3b10e659af186ed36c0a6f74db89431e034abc340faa9bbac8c66eb
Date: Tue, 11 Oct 2022 05:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665465653
