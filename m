Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFCF47E
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 02:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DC01C433D6
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 02:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662517253;
	bh=Gl/0DeWs5TE+oMLyCf3vauX9NnXOD2uqF5Rpvxq/3cI=;
	h=To:Subject:From:Date:From;
	b=lKBL/1vA2RFD81MR/euVboLQEaXjSrb03+BkuKr8PWhjLBdxkG7M50kuBbmXlacz7
	 2uy2i0hPGnqnSUByj2XJDUVlkbAxdMiL3jTnNwW3zxmkLDTLiLI9oIVLf3UwbJbjWo
	 De10JdX08JUDN4fMyMdEU/5cb52sHrqAqxfvTdu79/ZTp5cWmWrrrplICVoBxj2f2P
	 cwToQJ+EiLiNuPMmI14FdGXlKLrKsQdPuoo6WWT2q82OfAj/Xcn58aA0fw6w57A4dj
	 KBn3Wn7bA2vDiIrXEG6aSqX/lV5bOLqJQ6EewsMo9cPbGA28BMqXHKOfrByPxzwsqN
	 u6RgWrRp22J5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7F2C6ECAAD5
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 02:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166251725351.8891.9229441746036972154.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1842c5e4105b4d8dce5051dffa7a4a6b1d3ba0cb28bae00d7edfbc442ffa7e81
Date: Wed, 07 Sep 2022 02:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662517253
