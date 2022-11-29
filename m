Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 953F0BA28
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 21:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 67EA0C433C1
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 21:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669756254;
	bh=AzSWGxzpP2Gk/7YNZYnZDIvEDUbDEIGGLZ4H12FUmi4=;
	h=To:Subject:From:Date:From;
	b=Vcbhf91igtxu6fSBnaCXjdqGWEZg2M+DA7Nqmr8q8DkYRjMjywXLktOxixGsKjf/Z
	 uGlvc5psZPXM5BahL6+InJMy2SQuql/t2wJPdjBoYUEWUn7qKFBG8Fb6xMCW+2ZPPM
	 s/7qCezD8/B1xcLPzMf6X6sK/amwR+Cy+fKNnHRh+1ZY5SsyPp4OIt1WiMSVuUnQJr
	 zRXElTdToDQ3V4TqnWytDj7KNwOhufzchXhKBjLA/SRZFtmtZrQrBubFR1OtJvrfIb
	 wf7OYZYPMyF+HYWotnkjwPMgEL8iBXjaQ91h7FPaneElgwlgxUWk1pTsP+rl45XNbb
	 q9ZVZUF0SMXDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52607C4332F
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 21:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166975625432.15334.10015614058980995227.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 728d5c28c4ea23f4497d7844953af42badfcc8bec4b9ade6c966ddf7bcc218da
Date: Tue, 29 Nov 2022 21:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669756254
