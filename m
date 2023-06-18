Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A6A628E1
	for <ddprobe@lists.linux.dev>; Sun, 18 Jun 2023 16:50:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C075AC433C0
	for <ddprobe@lists.linux.dev>; Sun, 18 Jun 2023 16:50:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687107008;
	bh=LPwPjTDQagLPBagiqF9h+3ay5VVM2H5OqctNHxIrgzY=;
	h=To:Subject:From:Date:From;
	b=FQgYR63Y58bZITkQutzBaEjahEOVPy1rwz3P3hBPpY/0KXditmM71cSLBngql5l1V
	 +iFW2XnEJlyHA/gwVQ0+0B3eu8NoBZ4+4ICXDyqIfPr0x2yl2COsS9CCFVENOESxJ1
	 V5261cuGkCzoiE3DQFY4Or9Bf6mKLDP0laR3pdzC8elzfDETaapvmKQYHzPzribrVw
	 XJ5Q5PBw3n6rhYJirwH/zTatLQTKIJ15OVPaLm+A7UOJ95sf/+elolx5VNGDhKK/yN
	 YCpt5/9P3qwQJkIEPxsSlKpF5mdvwfAon3Di82xGWDpvxHYXhV3CoMtPEvukLDRa5G
	 kWQGvYJ430Ncg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4829EB64D7
	for <ddprobe@lists.linux.dev>; Sun, 18 Jun 2023 16:50:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168710700866.8498.12120595461890670379.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1400042cea47a858425be27830902b41943c48d414828b0a7e6b58fd45151324
Date: Sun, 18 Jun 2023 16:50:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687107008
