Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDC693B7B7
	for <ddprobe@lists.linux.dev>; Tue, 21 Nov 2023 11:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="khlqQb2I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78F1EC433C7
	for <ddprobe@lists.linux.dev>; Tue, 21 Nov 2023 11:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700564896;
	bh=HW/WxmN97bfm59BLrBRAe+ulvnq7Gk0bx/ay2dqBnfA=;
	h=To:Subject:From:Date:From;
	b=khlqQb2IuSB6Sob3aUBeOfrg9Z/hJRl9y3KvLcZcIkkjDLAJAjvEDFjCFARJDW9Ba
	 +Pw484rgA48wehCN2PxDDuRY3dZ+aXxVXlzbI2FobHzKsFHK+A1/xkJLDNk4fUd7FR
	 L3FKXxvCRQT19Vd3egfN6zUQtPQuTHeA7br93WYk3MI7goCGnE+8So0R5U7o+I8/h0
	 //2A7kOUrWeU7BzOmk8h4WcRI5+G1n2/XOODlmxqr9MWQNwaojy9XITu1gVKhkdja4
	 /Kk8oCotT600Cwv/nF29GXlrTPKaWkCB9V4cVcz1M0RtZJDc6zBlJEtX6gYyA+rYs0
	 YQBler55FaKkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C9C8C54FB9
	for <ddprobe@lists.linux.dev>; Tue, 21 Nov 2023 11:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170056489637.7061.12371091882290526653.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9fc282ecc162a8a030d8b6ce822f0ff7191a776af18930dd07d29b56827041af
Date: Tue, 21 Nov 2023 11:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700564896
