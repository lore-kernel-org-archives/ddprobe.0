Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47F6F1879
	for <ddprobe@lists.linux.dev>; Mon, 20 Mar 2023 14:07:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA641C4339B
	for <ddprobe@lists.linux.dev>; Mon, 20 Mar 2023 14:07:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679321225;
	bh=JRhQg4jVTlutHzEWml7FESTBx0D/U/ME+u0+k2+hyAE=;
	h=To:Subject:From:Date:From;
	b=rUro76olLz0B+j4cxmkGsQQ51wNh8Dm7r1VdGlzHZdve47Zjj6DyfyPc/LdrxdyLK
	 MaWMoYfGoeOUV2i4VwW1S8jEyvaCCPosRRhcXJH0MINI1x6R6DgPedZHHSUAAmtQU6
	 ZMYPVtWDD1WXql85y0CkbXVPAWeLe/KHuFWiMlAyDAw6n8Nqi2WQtzq1qRzj3cYc5R
	 GkTJDDLisRAhaDA6Kh+b9A2+h8mq8B8qvXVC1u5vJ9ZWCwgNERjqkYlGZ5D9k/xvoV
	 P+slWqeR9MpytWUkt+9fwftTUrlr2cP6lZiUAlVuvGZtWqJUX8yE6LBk6qKI4hxMNw
	 xlhWflKNCccSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C293EC7618A
	for <ddprobe@lists.linux.dev>; Mon, 20 Mar 2023 14:07:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167932122578.8992.15572078785880107407.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2dcf9604039d22d54e70534049a541c87f90612e56c8c0786593343fc4770bf
Date: Mon, 20 Mar 2023 14:07:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679321225
