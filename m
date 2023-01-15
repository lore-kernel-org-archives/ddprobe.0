Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00AB420E7
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 17:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8D489C433D2
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 17:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673805087;
	bh=V+YjuihxCl3vonU5TZLM9QtQyY08I6qzEOeiJhjKalQ=;
	h=To:Subject:From:Date:From;
	b=Idqvwx+sXoDWRxDaIVMOP3mdUYnAGkFlZaIKQoU65a/FL6tejwZroiDhChoeKFr2e
	 bkPRgKxnXGH/5wYG1ntfWdl6tmVV/uCNriOgnEML2h+8qaAiS7Un/myQTAXcDFvVqI
	 0N4/xa25j7Qw6oeiQitbdjc/cldx0RWfD3A/cvpO/saI9QVHJR3lmJ595S7StcrzrT
	 D7OFf/gscilC03ktuAuKq36cFiH6l/rp2uZPGb7hvOPphgsF5Tii+fKaIdqaXt9m0n
	 Ht9wUqwAY+uDgWNyHbq7PoWlA6AgkTLOv3O3bEuXFlfebKdmN/7O+/fJcVoYxeIpkK
	 +ll8VvwPaS0Bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69E4AC3DA78
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 17:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167380508740.386.10588061009386091651.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8069bc82b958660433e6c1ad9eb59d2e733701ea74811f05c9e87b43147f2c7
Date: Sun, 15 Jan 2023 17:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673805087
