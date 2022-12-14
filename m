Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D27746121
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 11:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8387CC433EF
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 11:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671016887;
	bh=g2oojACh0+XETRItU5a/4iKbmzqgDUfFQaFonl2ZFeE=;
	h=To:Subject:From:Date:From;
	b=hYyUx37oxjTzSFDXK1E/3IGuF/d0WMHQRYxHNi7OjT4Zkj20sK39ULYbgMW36rSax
	 73BRFZx19f5ctdBnTuCZYhlTqzv9qPEsP8SxOREU4ANMm7Hmz6SarPlF9qah/Y5KRj
	 xjeUyaaz69Y/c/ezPOalXc1OePimmwbYZzaoznEdzaEapYke7cmyZfdq3BEk0v8nse
	 vEzBT6fxQxId7GKv5VqfGWvIRmN2r7wYWIIEwga2BCIdXCbKlcl0NdMEj12JCAAeSW
	 ou/Xa9yA4mJv051qzXD+Dka6pg0LqEClOUQJhA+yZzBTsR0O2baKb+2/os3dBIwH/W
	 Q5HfRIDWqIoJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 667FDC4332F
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 11:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167101688740.22362.3089898846409863411.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ffa418d35f3b3a9883cf63b34309554a14117c4804c52598f762a6f23974e1d3
Date: Wed, 14 Dec 2022 11:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671016887
