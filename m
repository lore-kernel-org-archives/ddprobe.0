Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B12C97C
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 18:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 66FA7C433C1
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 18:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664735453;
	bh=no3iZopniM9mSBSTN1twrROTKJd1F416QHP7iknzlaM=;
	h=To:Subject:From:Date:From;
	b=LpbZAu18VVhqVw4awdYJhUJpM/wRym7fj2bkuO3B5pYKHNdsFS1KcQ/UpxKJUdrbc
	 H7yKbsyOcJzD0wdCNnAPMltSU7MiBIRsLTeURu+8rQei2DBRLt/farz17W9e6DbVq1
	 Un2UuYIO6+A19fhtS2DPw7BOJyNxq3DuswxvmcuJ6SZTUcWaZ6Rjxhk1N9mQgfLyLs
	 8FNZHxhusyyS/17VeUW8TVqoj4n7qnmJkTCU4x7Dm1fsXcK7FDR6ulBWVjl1XKP+sP
	 wYy68I+yNfYlCYeQN7qD7j5eSYI66htrm3ePZf1AROpAkPytR+Yh8twToeF6bmKoCV
	 I5obQl9ti6C8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53E8DC433F5
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 18:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166473545333.7492.2408753884920460342.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dfe1a3f90c35537fcc8d9b051e03977e218be4e94a021e45256f3a4911126d05
Date: Sun, 02 Oct 2022 18:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664735453
