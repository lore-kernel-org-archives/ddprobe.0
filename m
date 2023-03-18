Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34F1FA4D
	for <ddprobe@lists.linux.dev>; Sat, 18 Mar 2023 08:42:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4441C433EF
	for <ddprobe@lists.linux.dev>; Sat, 18 Mar 2023 08:42:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679128925;
	bh=Wi7hSR9WMQjcpqlMiqR3XTiR4cSL/XZe1+QnUCeXszA=;
	h=To:Subject:From:Date:From;
	b=Jiym9x1DEoC5NcXh+K940L6UBz1y8EL6XYBkdURjHUcmpILsxG/OoXX4bomriyRzx
	 FExFK2z85VUPwAgfI6a9SzXdDdECErHkFmGTxpKt24rRzLFUdpl60jXHdZX+ya3uVg
	 JPe264LSlaqqgXfIxreU+pvRjRnD/eo7tnTM0iT+eidm3ZZOTPXETp3VqEy5Ic+ZbQ
	 1uWIpbDOhWryFed6pD0ZlVwxDUqn/DCsCYuHnQ6qHsDadDzNU/mwbUG551HlBkBSe6
	 zPfw78mNRzXrlCLDEYcnOym5ShIKtT3pafPY7z7+GEgH+vSdEu9xx2kaF6MkPBomat
	 RD1k9Gh6vMnVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE85CC74A5B
	for <ddprobe@lists.linux.dev>; Sat, 18 Mar 2023 08:42:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167912892575.25305.4514606563375006912.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96f41bce604b2f54fd64ac6cdfa8e489f70836daf12db4ef8903dc4debebe8fa
Date: Sat, 18 Mar 2023 08:42:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679128925
