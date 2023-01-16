Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5BE5257A
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 14:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7ED18C433EF
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 14:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673880687;
	bh=MyojgdK6TDBLBAJYj0Vs/KcMbp/dLCmJVWxLly/4rIU=;
	h=To:Subject:From:Date:From;
	b=TkkGPpMlcb6EzyCaKNpnXShZTDN0GMSLAXDfstnPFXXjt+aN1JDIWUPXLbUNlqCGt
	 bTsKLyu9im/ihbWte+MRiak4whjUejWW6PgeW/ZEUN60IK1uz+Cp6x+4kGsPaXlpCZ
	 cX0LlEVEGD9vbhr4Y2OLFlvY2u/toP/OPTYB7BOu5cRjlxm7dhn73EJxI2CbuPXHe8
	 aYSrd3EMhS8PUTdZpYEaZ+//21RtB0NTNAIHEnbup7jWHaHJOmsecwfAkZ1b05HeXO
	 w0Olhhvem+fvlihgKa4fsx4S/HoBdze3xwyBTVLYWSVenENZJ6aE4FXLaIEA/QDFXc
	 X64muXFoTbKGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6731DC46467
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 14:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167388068741.11121.12308667188687260055.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e1579d32674e348e50e51e53bc4e92aa09364525214c0cea443c21d2eabf459
Date: Mon, 16 Jan 2023 14:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673880687
