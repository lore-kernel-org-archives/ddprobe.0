Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC2BE632
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 03:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77B77C433D6
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 03:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663472453;
	bh=ryOZT+FTZn9zJOb3tovD0vtMyz/AX6z7PZeEfziNg0k=;
	h=To:Subject:From:Date:From;
	b=aw7VBJe92UWxkWsraNOwf0in9q5QvZeW7efLWyZAcSHXITw9w23hDxSf+S5IdZ5bn
	 NS1wUZHcLZP8zKBIkR5vz/hHEXdLb4KqkxEYyHjpTOa7p+cXhud6GMSGRwb5L6OWLc
	 JB1DymyvSZpCwdZIZP8kTH0CZpciZ3gcP/N5pqyMB7kBVYluDmcWUDmFdkZ3faD3sR
	 ms+71sOK9kGaRaeh5K2WmIK7od53LxiKTzTFvpFFXitNEGwB9d2sqWrgSIHHLytQsO
	 K4ufXisZm1WFH0SMUhircsoqeS/iPkjKUUzy8Pjrp9WUKIFjq+/FTAtjfjcLP961Iq
	 1/tSQea1bvtLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DEBDC32771
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 03:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166347245336.16739.8854034515959034095.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 098be5566b91b5092cab8908a95d0f3fed4ce4c9225c93937ef4ecb975d2f4af
Date: Sun, 18 Sep 2022 03:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663472453
