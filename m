Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 486DD3D74
	for <ddprobe@lists.linux.dev>; Tue, 28 Mar 2023 16:43:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5C9FC433D2
	for <ddprobe@lists.linux.dev>; Tue, 28 Mar 2023 16:43:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680021785;
	bh=VJ1J8dVDmP0wYmipG+sBVZ0Y7iwPgi+1Au35g/E7Hbo=;
	h=To:Subject:From:Date:From;
	b=BP/TnC7xTof52P3ZXuftl9kFNTB/77LOMPBXHl6HO4P5Gtq/ELkyMj6lHuLDKDspb
	 58k1z0HE4OybB7qhdQttir0wEWhVqyolYMOpF6c4m1P4u8531ficmfrMdLFJ7oMl27
	 wmUuuhfIRrxc5qGzRuIRLKkJLvhBxpDSfmp1rOFzlzH414iNNv1mmHwh0V9wdHLwuC
	 iJActJ+6E4Gsd59qofU0cDL8s9K1gi2MRCbeZjdWCEAR6E3ia+dx0Q/es9rlDoJE40
	 04jEQgqO4SpQ2bOYdq6wuWhux34HfDPmNrycotlKPw8VyFc0bXsaNBRrmzQugvNG1q
	 hiYwf6s7Ua00Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3912C76196
	for <ddprobe@lists.linux.dev>; Tue, 28 Mar 2023 16:43:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168002178579.30992.519943179962007504.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 060cde295ddeedb423cada336ed4ca7cc55a089180872c26a410f9b12a517fc2
Date: Tue, 28 Mar 2023 16:43:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680021785
