Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAA9C8F71
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 13:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83AC9C433D7
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 13:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666357253;
	bh=Vn/oI/p2ItIU3teZ+iMt5dxo9wJ5Rd+S6wJZrROb1yw=;
	h=To:Subject:From:Date:From;
	b=UnnumSOqfX+6EA5lchbxmnPk6PkuyhZG7Fe43wJlwkFdlX4VGifk8L6RZaI7F9zgP
	 ZwBdE+s3Xec577gxN8ga/38rbQyMejVXVh5tfyqoDCcDFaWxKieJisO1jZgN/nwfex
	 1m6n+5w8jFI3rbRWlHUDL1TmNyzGCN2nBMLz5aeBvjOMp3VQ3mpYEajWKJXJNimXru
	 0PntCd+5qHdaRaewEU91apX7aIa5FAEafQD8o8MkLM1wJYmL045rffS0k4e2eOtspG
	 KORrk5qFXSgKEA4/8uhMhLHxFDT81ZGHXYFPtxQLXK0ZNb/BIdvcTPOQ1lBRf7fMaa
	 IgRp41Pr8MTEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 540C7C4332F
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 13:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166635725333.16312.8881334831581689348.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6140be8f7fbec78dca53478f2fd7c6004fbfcb52f7bc54b4d7ade2659dfbb36
Date: Fri, 21 Oct 2022 13:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666357253
