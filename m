Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE47B20F7
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 13:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69609C433C1
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 13:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670418054;
	bh=6QdQJBOCIenDQKNnHpXnEaOKD86F0ypYSEO2vNR9Krs=;
	h=To:Subject:From:Date:From;
	b=C4bDNIpeuVVcv7oymy4SMKDdrfMt3ndW2pQu+FWfDQqXHroBFTZFedxxnu3/nwn0K
	 go4QgnuiTjNG+LU3E8L0XNhP7k95G1XOriCOqkL7K7pa9vd9Bl4xELU8W8rWNCyeHN
	 rhb6XW4TMXzsyZ1SzGyckRR4hQ58S1VC7SlbMSbYj+crHbOFLQh9doYdYkZjVD/r9v
	 oDHoiNY/NcFJiiykOYaOUDocTNWnoC6OKAap+ntZHmEoNyUCV+XQYFnOFEcBZHzEE1
	 h5Ot2VeuhIKgu/ferAYxRUgSO/M80qbDPVN1k2AsSU6kj0+Rw25ElSRDTcDd3ust6I
	 6PLy/dXlF8ViA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53B94C352A1
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 13:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167041805433.13443.2206016918547839363.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 483da833c1f424aaea39f7b220be545385e0762e76be35f647f14fe59af03457
Date: Wed, 07 Dec 2022 13:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670418054
