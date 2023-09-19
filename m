Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6350B8460
	for <ddprobe@lists.linux.dev>; Tue, 19 Sep 2023 18:55:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEBB6C433C7
	for <ddprobe@lists.linux.dev>; Tue, 19 Sep 2023 18:55:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695149708;
	bh=oLBVx33alG4OTTFn3MVHV8l7axL553rmQrxoL4yg3Ns=;
	h=To:Subject:From:Date:From;
	b=AiJmuGNFJ7kyHNiNmFAjwxmVaq3gZ//vWIDvuM37v+uOIXoRAN7v9xbCOLNaw+13d
	 wxcN1DCz71K50t6m4yJP5/GQ6ZUqPs/96y2mIFaYqZ/peds+g5Su+F1zEnJF05I4Rc
	 UeY5RgWnRLdrGBTKz4LQrmOmN0YkyYrtXdP7AM5dx0iyiD40Q3jvrYya5Bj1FJ5aKK
	 ZDHVlPse67z67cLk0qRjGXHP9Aj/Vo2MielkE8hbB9IU8yxcX/JwMJdZFA0DQrbQ2g
	 7Rs7Ev+qbJRhr9HifTCtEbbH4ngN6Vo/CWixvH1cdz036lu/q3ZiVNaS7H5bvHJjuN
	 c913adsbUBLzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF5F7CE79A9
	for <ddprobe@lists.linux.dev>; Tue, 19 Sep 2023 18:55:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169514970876.4734.4017003726656519762.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 623cbcc0ebf4ab873d6987f8b0b24a935c8c77f20d1ba0a6029f764642fb512f
Date: Tue, 19 Sep 2023 18:55:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695149708
