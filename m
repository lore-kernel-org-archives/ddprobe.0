Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66B4E8F78
	for <ddprobe@lists.linux.dev>; Tue, 22 Aug 2023 12:14:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D78CBC433C8
	for <ddprobe@lists.linux.dev>; Tue, 22 Aug 2023 12:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692706448;
	bh=Dti1uhe4d6sqEXVBgBGcoLQ/lTOIQ/YjTY2A13SK+ck=;
	h=To:Subject:From:Date:From;
	b=AqunkopIBO5elT2baDlmUgaOBuXwzSF/zvQE/+qlbrbHj48mbA1d+1EcdfhSronnD
	 hN5XTtc+U08VN60KDs48RJbUYWNRJYLINsu+9ud0Ht/oTT2owR1/p+cqKYD6Z2rPO/
	 9d3Xs5Kat8RpOYo6aSNOOiZv56wDBD0vK9QbgQCK5LVO9N9LwInkDPvurTqUCqYKrQ
	 k1jCz9sWOkKKOKCDoQhirZ9lYYmSIOuenKPUw/0l3GpYCQgvVmYWxwKXRGqsGT9Fo6
	 IbbglB0B9WtgdIKVu9p24yvxzj+KIRvRii4PW4OsvDuvoid9G1aKpG5sV4UPT5SKVj
	 gr10Zs6aXYU3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC99CEE49A4
	for <ddprobe@lists.linux.dev>; Tue, 22 Aug 2023 12:14:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169270644875.27337.15646384669712234061.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1a84ef21b871088be794d3041c082fb2465c3e514bcad22dcbd4351833f2732
Date: Tue, 22 Aug 2023 12:14:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692706448
