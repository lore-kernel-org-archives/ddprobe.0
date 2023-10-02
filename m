Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57B0820326
	for <ddprobe@lists.linux.dev>; Mon,  2 Oct 2023 21:56:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8678C433C7
	for <ddprobe@lists.linux.dev>; Mon,  2 Oct 2023 21:56:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696283768;
	bh=chhKNnVRzkjLR2mZBTtqByA/P4TRB7j7ZMZtB9FUo9A=;
	h=To:Subject:From:Date:From;
	b=m42TDNOjF8ShxSguqak68HTRXHem6K4gdG2HP+zHGsXoyoFRCLaW9YfWsp/BW4Oyr
	 cQLbgxx82dK0HMd8qV9bXj5iSwL/RR5d8AyeSc8G65hUpAI9aYPYntfyMdLSsuzN1C
	 1f2MnC5zeeQnfBeS9+H3F2D99xNs4Way8H+A5nU7LiKPS3WcgS0psb69DC/CWy9Ewp
	 8cefDjTMNeB0LBx6SGmMKUMtaet+VQM6zZAT/29+A18Rc6i3+EtI2w015xCPgTspko
	 jhZPcXT8pUXVdyhyZeNcjb/MxP6R5poE5iQXGAjJrdomrnDyQ6tibJOZiyTF50r6GP
	 TB8TxIg3kAURw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9419E776CB
	for <ddprobe@lists.linux.dev>; Mon,  2 Oct 2023 21:56:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169628376868.27393.9423255307708642028.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db35f3918df547ec234f668f3df17a62dc4656188c319b2e82ac53b700cf839d
Date: Mon, 02 Oct 2023 21:56:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696283768
