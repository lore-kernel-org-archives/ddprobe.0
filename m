Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD7682568
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 20:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73F8AC433D6
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 20:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665952253;
	bh=oLw0xlHqdeaR/T/3oKXzEumZtDBSQb3GGMHg7zCt0FY=;
	h=To:Subject:From:Date:From;
	b=M1afYAW8ZTDfnRwYG5tINvoFegXxxk+SNVBoF30QWcE7bRYzyHrX14ZTXnaRJsdMy
	 ljSeiKPSNvJxAGjmG3ebEN/+UG8STGa5DGiIsreN4gmc6WA/CaSsg7It+ZGyfrBb1r
	 /Pr75+pNA+wMr3MwvBppMpx8CT4LWrREOCJy78JopWxCdRwjSOmhgVmY8sI1UP+r35
	 5epa3lUFlDvNkDyXERKlZyh1AJUk8XCro6U0lCNBhBNALnuXeDd0rhGb8HdezJ7Hbl
	 KJpvc5LQc2/QX3AVeSZtc5NOaoIhuS7oqmmWEHdSwZbgYOayoFtn/7vMoSxEI5c5nl
	 coJtbxM495nLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57A21C433FE
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 20:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166595225335.25978.963734574472209858.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a6dd739ba5dca9db68b81f1071c90cae255e6b23b26cdd242e249795f1f9476
Date: Sun, 16 Oct 2022 20:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665952253
