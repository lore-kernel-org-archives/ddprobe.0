Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 419B5C2D2
	for <ddprobe@lists.linux.dev>; Fri,  5 May 2023 23:08:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4AF0C433EF
	for <ddprobe@lists.linux.dev>; Fri,  5 May 2023 23:08:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683328085;
	bh=7HPbcw0bQrStuB91NrLfV6KpeuG2o08bBAyjvBDosiQ=;
	h=To:Subject:From:Date:From;
	b=PULL5gzZbBNoJu1S7ZbWzl7CEhffe6G35KaMCSA1+Q4hIsbY0P7qVRl2WymdDQ8q9
	 E6soEUOK+IaWAVt+wIwPHJsTibkMQMvfcSblAtKt8QR8//STkzRCKGxXMlGIpvLSUD
	 YJOEHME8bmz6XYj/65awNeqn3D4TBZ6fT3MwbZUudAVodABfy36JYbW1MeMaBsgzxk
	 JrvbKMHKyC6hSCTyfjqY7WmVOOzxsY2Ik1RWeqseouX/EUiZifgJDLCafCj+ASn7Lg
	 Xpt1z3lkhX5B22graT8K9HX7UFdRfvw8T4lTF07jnpcnYqQ4LNkHCnmD2RpshmU+ct
	 9ND0FKQu74q3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF89AC77B75
	for <ddprobe@lists.linux.dev>; Fri,  5 May 2023 23:08:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168332808577.7444.4766235974385074163.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7dde45c9a9c12e5acf6bcd4e9dd2ab543f6849d8e91de8e12114e77a462fe5ca
Date: Fri, 05 May 2023 23:08:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683328085
