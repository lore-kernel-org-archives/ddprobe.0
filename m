Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5587633E3
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 17:47:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4703C433D9
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 17:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686678428;
	bh=MAoXeFMDzS7a7kUmZ9+weKKvVhpUGPldYJ56BEiIFBw=;
	h=To:Subject:From:Date:From;
	b=tQDzps/Y/w2yNB6Ty2N7cv1gniEjGPBTowZ2ux5b8aCBqhzSoQRgmI/CJbaRK2JLP
	 wAU0ChoUlD/4SXoDRAeAUxjeL6XwMss/t6jGc4soJJp/9PBTA7RV46AUK3y1CNpvUY
	 cSN7L4got8Jo6GF7O48Yn91m8H79kgQlUMBZItV3QmnG1cwBINSW6R8+oZHTbHjH+l
	 IJiSphlJJ4PFJyzXool1NkDY5gbx3nLDYumSi3dCyvYLqfH9uUrqbGChShJABo8kO5
	 WDMYsphod6/lYWwv9bYmyjqXDwMw5HMenf887dfBYYXgxDpt+yogW9gxSG/b8wcFUs
	 IrEdUVhHqNQew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3F7CEB64D0
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 17:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168667842866.1012.13067138296286944597.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d36a56acf954971a28eb3340d29fc3151ba6282692643974b04b43c8023977b1
Date: Tue, 13 Jun 2023 17:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686678428
