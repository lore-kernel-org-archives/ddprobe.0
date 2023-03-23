Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36F49BA54
	for <ddprobe@lists.linux.dev>; Thu, 23 Mar 2023 18:20:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D27A5C433EF
	for <ddprobe@lists.linux.dev>; Thu, 23 Mar 2023 18:20:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679595605;
	bh=mNTuxsuqjCmTX3hPde7oTQSt27Vq8O1IYictaTrCh90=;
	h=To:Subject:From:Date:From;
	b=jIeYvMYQKJ3Y62tOCLDqM0KKSXZgQcOvPssf7VxHEvxh2XbElUhiFtP63sixwMGV2
	 DZkhCGkQGZN9XEA0FVTv/Mi49tEWirBiBNAq7zEbiRPz7NDH2xh6x52QEYV7h8zCNg
	 YVGzuvkn5oQDpvCRfON0OhX7uGRHiRFjJ/hz+juWlIn/o2hCXhLw1S95j+9lg5/Bbl
	 ew46Eq7RgaVyd1fEdnmyceI9Xd8bNtmDDEMni26GsyvNonR47A64SSI/XXQvxnTYP2
	 Xfjo59irGxNBCbI9m/DLCANDUjCZbnHZhCml6jbUS93Q7JTt0U5W8fi9D88ZFymGR3
	 sOKPEfN9y4U8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B82F3C76196
	for <ddprobe@lists.linux.dev>; Thu, 23 Mar 2023 18:20:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167959560574.8503.16511114780843877151.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df653b9ebf1cb6ae65778c86929a3b9e015ee9a9e38d018c02945809fe8af5b9
Date: Thu, 23 Mar 2023 18:20:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679595605
