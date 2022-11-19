Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE0AE258D
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 22:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7496EC433C1
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 22:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668898254;
	bh=GByZhU8RrnTQoOp4CWsAZLP5rw9eXQaYnrsz++b7iFQ=;
	h=To:Subject:From:Date:From;
	b=HgQD986SW+1QRa1A0oIvM8fR2fETMrN0AzgE3kUM2M4GLQ0F/amBhqwfLqC4h77k5
	 p+aVRLsr6iRLbiPKlkg5/0igjxowq1FtODI6O+VSILnr0AgFd5zpDtujOx9XsegR4J
	 b1RE4kOr0Ch9JUC/bGxClV8RSXakhqVP1F5WFnIVnHCTmTMn9/tmZPXYaqsRqKhXU2
	 jNwr7Yj2wKteIYFbRIOmNuks0Pvu88IXXACfzbLyg1TvBbSgguoYR3+XLHnvh/jhex
	 KVKjfeahkjnpN/D2x7XnEQYpFSnuH/XprRRvh9B2NZcTJtKk63d9ahXk26rSTpzD2D
	 4o1idf9vVWTdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A0C6C4332F
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 22:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166889825432.9189.3225625919878073620.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6feabaa4e92cb3c3540ba8884b51cc2e01ffcfc24081351510b49f97e82362a2
Date: Sat, 19 Nov 2022 22:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668898254
