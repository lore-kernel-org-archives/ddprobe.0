Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAFCD29A1
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 17:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6EF0CC433D6
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 17:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670434254;
	bh=WFtbVoczzrT0dNx4QTTV6Jjhz/22XevOfoAaOSc5ews=;
	h=To:Subject:From:Date:From;
	b=bOt9TOTgslL7Kl5+Pd4CWz7TMRzJhlv3mXiI8DZj5xmFPLRkmgNPzXIXvXRHqtH0n
	 On7w0HIe0+A4U9gvXyZ+kmfjAnNBUd/8VohsaZ9jdGWe9t/uyDwpmQgaM7nM75jyhJ
	 gyUHnhppWZMT1WT4dnn0TZYOuyqPdnjEsduYFVa2rHfgKSZqt5hd6SniXexsIo5dxH
	 69ezKllveBtKl2EmboowHXpDtgpIrM0on3a7AmJ3RViT+J+RcBZy/w+dRd+MszZv4S
	 aJinq4BWX2CWJEjbBpq1GRd7UHC/A2XvVu4JcPn3Tat9XkKlpYpDzNsVXmT0Ic9HVh
	 /Ac+IvBxYhlnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 570FEC352A1
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 17:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167043425434.10736.10950234338062254540.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf7d6aecb3f8573173713b78eeb85ce9c3614a863a72391b374f79ec8810bbc7
Date: Wed, 07 Dec 2022 17:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670434254
