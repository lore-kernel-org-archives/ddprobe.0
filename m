Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0B9D17C1
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 07:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69F4AC433D6
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 07:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664780453;
	bh=N5CITs0gkop6ayed6HEAbPRlQ6kTjKYvLJMpDxudWsY=;
	h=To:Subject:From:Date:From;
	b=OELJq0iioVlxAx3YOS18bS6UdP3espB7tECt4/icJjsnnBx/hjVx95k2g2/Ynuz7+
	 Pl5EAZGRr/RK1QNFvWXQmitjynQAc6ONs7gYlhBE7kg+Ote3o8VHMWKLzgqxpgzhim
	 lg4PrC1Um2ZWRX3YFJiuGacUI7utylnAhLbzWx6JdXvQm3LfYmtoBiRF8Uk7OMH5Fr
	 lz56Kn1gNlLJBm6TDGnZ/IBnQOFbqbMePAmBmR822EiA35/mMUx/fTUB1FQa2IbQuP
	 xF/L7g3PEVLBOQSUGc4VSuRaK2xh/WxBlXPr+Tqb3JKhzjy1HkybvbqFO/pIQD85Jb
	 tkn+7kd93AH6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53DB1C433F5
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 07:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166478045332.1485.10406484239813738276.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5da5201eae9457454fe24163c1ea605cc30bad5db17a78ede2df0ffc23fc664
Date: Mon, 03 Oct 2022 07:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664780453
