Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E716B63B6
	for <ddprobe@lists.linux.dev>; Fri, 11 Aug 2023 15:33:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDF3EC433C9
	for <ddprobe@lists.linux.dev>; Fri, 11 Aug 2023 15:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691767988;
	bh=RFFCoJotyKmJPCA4E4n4MQqijnvC3xfCi5EKR288g+g=;
	h=To:Subject:From:Date:From;
	b=K1lJt3aRS/pK78YXAsINhMsUOmeiAsVl+wq6pi07Ye6NuGq6WjDtBBXvgOFYc/i6N
	 UnfFH3mlDrC5ZacXUZ0zKHW1engbbju42+IH9bOdsuVGNFaPhwECRuD+EAFAwIknnD
	 2M+HPHxorFpEaB3+hNyPc6L573VU7iEByUfHLtbGYWr9Ork39iuEWED24EtqwjNeIf
	 Zyox/o0mRkYi1ogsFhKtGH5Lrma1T20zS94Y3NXL0Dfgh6owg3/JSAMreG+mvPoNgD
	 AOXH47khvcHfEKKwSD29XfCn1aU1EzXtNgG4MNKpbX4m1Hpd2H59bSX9B5O2WY90t3
	 OVWPO2fNA0wUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A37E1EB64DD
	for <ddprobe@lists.linux.dev>; Fri, 11 Aug 2023 15:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169176798866.552.8984114142916504468.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a5c66373c63025db2d3b29ced7895f05ab83affc3e8c6226c6b9c34ccf67c9d
Date: Fri, 11 Aug 2023 15:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691767988
