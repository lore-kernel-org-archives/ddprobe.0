Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 410403526B
	for <ddprobe@lists.linux.dev>; Tue, 28 Nov 2023 16:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HBbjcT4i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 793F1C433C7
	for <ddprobe@lists.linux.dev>; Tue, 28 Nov 2023 16:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701189496;
	bh=MAfKUrumhtBUVht/u0bmW4/0p4ZLYEdUui0PyMDaOLQ=;
	h=To:Subject:From:Date:From;
	b=HBbjcT4iZmjrnMYjNvpGX9xPHdGAoThTa3JEYfvRd7eUmt70FUrmwLgKIO5c/bJWC
	 TonI+X5kCKcvhCvn/XbI3nHkYvATIK34jZyXk31w4NPHyKyOlktYyl+LjS+Z616q94
	 hxqu88j7QRJodWGFPi3WocakLf0nJL1IubpesWS2HklgcyrIfsUCXbS+6FMVRb6R42
	 M2WxXDt09DFCQC51cetmhxOmtz1km4sdwLCWRyK2Q97RVin6cMcY4mByoJ1I7682EA
	 usprfGyXIpBJp2hs7k7UaAVH1GjcZHE3Tmbpc5tepbtwFqu7MMlLKYTGH2Xk/ZfzbC
	 8SvaQKaLpny+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61D64C4167B
	for <ddprobe@lists.linux.dev>; Tue, 28 Nov 2023 16:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170118949637.6757.5139805567940022459.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e2d9a74748fca2eb6ec49f6e730df10433018fa88c4d4887fa7b0fcbcd2fd5d
Date: Tue, 28 Nov 2023 16:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701189496
