Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA84A81C
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 06:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78296C433D2
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 06:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672123887;
	bh=48V/axVpp/dLTL9lXyz5iRdoiM32VNnzh9BLndv67vE=;
	h=To:Subject:From:Date:From;
	b=KwTQBQLWBMuBARVfpbBpKKYTJ5bBfBlr+Byc2E6kQpEtjE84Ysj+rJnoVoKaBmvel
	 37oEXjKNGEThNzCC+qt7JFQw0DurEtQdXdzAzw/9z48+n1KSgTxJN96xrTyxzqztRK
	 5F5rx94d6M+ERzkvKBjoNKNz6x33YqdnxJmZCiB/mKDGLy4mjdJXcATlvdpqsdXfzX
	 YBIQNumYZ1W527PktKy4/FQ9xv78ZbLaZwi+Tm0JZcs7nHtW9TZjOTxNMM0XDsQ0cx
	 cyTeuoXovcT1LwiCaW/f0F2NJdTgjZX32GzYD/pk4/gR+MRjcPIZlMxgGt/Z6Zvb0v
	 g1yxPpDROfAwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DBA8C10F1B
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 06:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167212388737.7788.15000337618032299788.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a255ae3b9a252e8c28dfc0ac178626dc49948f9c45b263229d6df48202a2a360
Date: Tue, 27 Dec 2022 06:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672123887
