Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C05AF12294
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 18:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69094C433D6
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 18:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667844654;
	bh=gUT8yM11e4D/i4ntykl/M8fIAv5I8Vaj1k/w9jtVsb0=;
	h=To:Subject:From:Date:From;
	b=TO7u5Nm5NFOrYmBEZlkj2lIc/gIwWWZtdde0zaHekO5n27XoiWTYWsGT0oR3ewvsj
	 cHUfGsL7idtQ1LHI9xLDLUkaH5cZCK5yVM2JjC47z6loFN+QG29qtyWvF1CRPoqiTo
	 Hyc2SSGYyDIq9iJGyfINqAvtUTn9oMllrHzPEDxYu56obrCzoSe7kAWlPRv3u9BOkg
	 helitBnCphfO2lKnA5WwVPhBA94/eok1Bs8npZFcQIGecJpC67hW7NF9zt1j9duYn4
	 tIyKd4ysDQ21nrVFQLaRx7O8jSWYy+GWDDuLFklb29KiQi3zFR9FrNz0ltVq2us/w3
	 y+aAGYH6+6i4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F447C4332F
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 18:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166784465431.22853.7478519325141086924.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b63e64589567898327afc71088293f5c17b010d7db9c6a78d59f0defc5aeb280
Date: Mon, 07 Nov 2022 18:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667844654
