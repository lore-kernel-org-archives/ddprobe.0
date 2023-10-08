Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 89E0C125AC
	for <ddprobe@lists.linux.dev>; Sun,  8 Oct 2023 22:17:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Iwk86xDl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D23D3C433C7
	for <ddprobe@lists.linux.dev>; Sun,  8 Oct 2023 22:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696803428;
	bh=njaS8aMEbvFb15RoPL8mP+8wpKSuX4fGVd5bjWVaC1g=;
	h=To:Subject:From:Date:From;
	b=Iwk86xDlR84AIpfg3tyPnA3Wj3cEXaYbBxQ+cXKM3JyxlJHUyVraAZrINqSehRP5Q
	 wkZP28RRJPPBEEN7j7P3M3XM6Xy/uB+riTyxIVdlbyWWbpbUic9NNL/DFBCeehn9UL
	 +6NvCuzRlHIbhn4+Ubx6HZJH+bFhT0qzSAjL806/6PjJT4/YBuHCyGLckwL/U6AQr/
	 ol9Ey2i0b+H8qHt0IJ90xJuBE45/S3jDgL96iPtUgRGC43uqswdpmQtJPFULxFXQPD
	 FnRESkhzYTdzXx0uix2TzqwyOoRLzjPh2nEQ5u3oTFN+2AfijawNldPQD0ykK24IZv
	 +ySBmCcnQRXOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0455E95A67
	for <ddprobe@lists.linux.dev>; Sun,  8 Oct 2023 22:17:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169680342867.19598.11510469118330507685.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 881f9617755a8d6cc0617ebc1dbc9af7012baa57e7a58519abaf7e6cb98ffba7
Date: Sun, 08 Oct 2023 22:17:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696803428
