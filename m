Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7EDE3816
	for <ddprobe@lists.linux.dev>; Sat, 29 Jul 2023 17:02:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2930C433C8
	for <ddprobe@lists.linux.dev>; Sat, 29 Jul 2023 17:02:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690650128;
	bh=b9H01pR8nGFAYPYkN1Fxbp4BRwi5CqCAmJZmnIAnXCw=;
	h=To:Subject:From:Date:From;
	b=JnACLYuEEkilIDts+5ZQxn5QRe2CvvzmxE6M7YYCXBSy8i45Rz7ntiFnCRRXb4BXx
	 7MM/0GOngibawni2ZncERfpznxJq1XdUurkIDtSDMwpB9sueHXrUvN2kcI5UmioHcm
	 Z/NWEALukr7ZbPQhMa/4+dAe2V8HnPYI+RNvFi79HoKeeyveSzpjx/kp7BdQk16EDc
	 LrNrMKSoAOTy1HMomBDTbGSe89E+EPWbtW3YB7ZPb7tT1+GkNu3JYHwDLVyNWu1as6
	 Gs/7mV/SU6mmBGHNpI6qn2eMm16hLMOz/J9nFRUWOQypDUVeRBZw/QdGGMqA4Xa7Ww
	 bghj+LAisvaOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1E7FC0015E
	for <ddprobe@lists.linux.dev>; Sat, 29 Jul 2023 17:02:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169065012868.1107.17634743131764514705.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 536ab7fd098afd84ae8273604a6bfd57d9b1e344e80ab44c211b83226e80c92b
Date: Sat, 29 Jul 2023 17:02:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690650128
