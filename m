Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD7762900
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 11:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A024C433D6
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 11:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670152854;
	bh=AoiNro2TD+NWIqvKvESsVEzp9XkB18BMfmj8eYBXFpc=;
	h=To:Subject:From:Date:From;
	b=BryYL3uSwr/uVb0dCLV9fMsg033ciXc5NXRxjCuVYugKKlaBbX7IwtCgW0FSHPIa+
	 z7hoarzMiTyfZ/aINCnEVa+CGt+7fRleRNY5N/ZdTC5MH7gwX1QcvgCz+mM5si5uaQ
	 aL9yJnlOlJKRDldJ/H/bcJ0QbBcxQrLu+pePC52qvZ9ND7MSD92OSNCwulrD3biCr1
	 6pDCpKfLP/zYjSNH7UrgTcTyR946FDgd5J0XXiuJ2SLrnIs4j1MvNaDfa55fBT9RYO
	 WxOW4HQdbrpMwlnwz5zYk22s3EeRCdRZsLc+/8KTVHswnMPEh442FYjfd6WQh/+MAT
	 VFjf49xcLDR8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5998DC4332F
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 11:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167015285434.343.13784860243628776035.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f36ffcc2cf932a15da3d37d4db483dc6de23f8a361addef409d295f73993cd1
Date: Sun, 04 Dec 2022 11:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670152854
