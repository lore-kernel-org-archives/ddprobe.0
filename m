Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D5961FA8
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 02:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 65D3DC433C1
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 02:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666144853;
	bh=CRoP3svrhsADaO9IkW33Bu6dR37GNq8hl6WERqOXX+8=;
	h=To:Subject:From:Date:From;
	b=sSCeWDEZFBUfoF1YIWZ9tK4pPZwQ+E0l56zCqamSgR1ijhsLhjZ+0IqiKHJ73LxoU
	 B/zT0Llh21mNpySh5xTSaCcSdPJUn3DZoz+UlvMa/IssXT/vIGXqlxlnlqCjH5neYf
	 EnDg2oq3oIwerFF03QpCi9QtrI/OdRqdB2J4/h48z8wDHKRvoVy8odt2/rXzkpGfTv
	 PzlUei5R0AgCUUxhg0q36xVqq5C6a0IhU1R9FT47EbAXcS1jO9CiQDBHhHyXeViNfw
	 itICAeh87v+Lt2rzv1DrPPY70Ms8xva+Pw7VHurcZa3H7Ohm2EkldFy09doyT8srJD
	 OIaxbN1yAHrAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F3FDC433FE
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 02:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166614485331.2235.4718256760112439382.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ec366aa022aad410f72668c42aa01408bca8d72e1d5774cc4714560644b1124
Date: Wed, 19 Oct 2022 02:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666144853
