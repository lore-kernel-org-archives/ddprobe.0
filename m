Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE161366
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 07:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D8A0C433D6
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 07:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661842853;
	bh=AagxH/b/BwizDnOjYRhFxeykOdHxacWpYwdVDD4+1Fc=;
	h=To:Subject:From:Date:From;
	b=hSNvcVf5+bMy/qjfo0ga6kOTcy5KmQnNBX+gSDHkrqPI9ECJdebS9AU6YrClOg5/q
	 YeXJyNTGHq7QlI8FOLXpnU5VeAfpAerqw6qY4zFSg/JimLZnRuEjJyHasCX6g6TWSI
	 Bwz/XQf5Hrgx9ueX6h0nhUFrAnB44TcEnKQ9+hczPjJo5rqkWARFA4Mj4L2pHEpEnC
	 dAG5ELHl1s7zK6MF4RYCpT6Pb7XN1jSNL7iAXBWvzz5xb3qBo5SDUE0fla/e2rtpQR
	 ISxKE6JOLFL5of8xbWvLGfGs1QAGyQrgumsLpn37PW8ddeqnNMH78zUg2DsCB/1L5G
	 f2qYLDphT8JVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D833ECAAD8
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 07:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166184285337.26402.11918331836377477609.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c80a3ae5fffa26f9d6d52cef03e00aec1ad24c95f7a3e243523c981c17e180fe
Date: Tue, 30 Aug 2022 07:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661842853
