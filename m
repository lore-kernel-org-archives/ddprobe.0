Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3E237E1
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 09:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6776BC433D6
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 09:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664271053;
	bh=pEUPNF+MJ7kmJexASBsepMvOUUTCBTGvbLCWF2Jh9+k=;
	h=To:Subject:From:Date:From;
	b=DBRu/Sj8ahVqLMxIrl4leHK+sVkka1WJ2exBFo22EjU3yEllIa28dl5IVguMTKUCA
	 41dbXQ6sL3iqPE/c7qEn9OqUUhUATfVujsB9QsMJnuuP5kgbrI6OZHiy4nGn3LFNLQ
	 rf1hfNTGG5xopnR3SBvH+yyaZ/KfFGnpZZ4+naJ0wAxGM5RlX2TyjicNvZMm72rQEC
	 acXNZeUFVrezB45IC/0JULpuxvyMEyafiy0LnYJnDYAqjkhyD4sEnnIroeY+rweb9u
	 4CU8LyDBT4qxynt/ezfuq2MzrOGlFjM9L/Nvg5PVyZDznnvrHFbqzbI0HsFSoPDdUA
	 WU0fJ1iZMxUiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5087FC6FA86
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 09:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166427105332.31603.9322482870914443096.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02a00183582c5062aca0990b1791cef5faf1e8a3a4f4156a780f9aec98527cfd
Date: Tue, 27 Sep 2022 09:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664271053
