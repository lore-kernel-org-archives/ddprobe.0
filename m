Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E16A1ED1
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 04:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8972CC433D6
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 04:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668315054;
	bh=RCb5Lp+Eef7vUGFjOUp9OwhemeI5apG+iXNpha13dGo=;
	h=To:Subject:From:Date:From;
	b=WIuU8ZliBKHkqdqYjoQTKUOyXglDZMroTaRbBb27zWHJLLDe8aZVDVNUS2uOsI9V9
	 T5SxWhm4dAIo8hog2yIMojAakXWxLkrfXpsqT+xTMDy2ahtp/j2DI5FnjC2mFc6Xxa
	 gaDemGvDLFt2DeCxcvgfHb1OkZ/koO94BLFyflx0Si+6ZuNu+d+VMp38T5X27QQ0nw
	 OuprfcGhQwbf5Yww3MEq8vUykz+YlcEkAlnfJ8xCL03mG4mdMGhcm4f7GqxyW2z35d
	 EJ0bJbSXC8/UDIu3y9fFZSL68BdJJFiL8UgVmtUp6akviS8pAA/BzjPUUcpp57Ct7v
	 GPFNnjQMqeAFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F55BC433FE
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 04:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166831505435.4554.12654667416371856887.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5816510c40d0764752c74b72ea78ee1f36af1c10a2a520981ff434aa5eb18e5
Date: Sun, 13 Nov 2022 04:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668315054
