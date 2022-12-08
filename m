Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDB60629
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 06:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77220C433C1
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 06:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670479854;
	bh=JmWsUnopaOIlrk5SR7RGdqhtdZcdDYN4kmTia1AyfZ0=;
	h=To:Subject:From:Date:From;
	b=mQruYUNewJptcOAtrHi2hyyBKcpvWYtbhH3DejD0fUxilWJmTfB/agciFanNdyWoS
	 6O6a+CSFjaQae5I6GpGjrjrMiT1m+PEkl9P0chkhTdtEkPvFEbUOEwa76ogEElO3IX
	 LErsU0Mxh48pyVUl76Ki++919V2QmAby5bmRD2JvU9CDyoL2RNer63uTu93ov8hEeN
	 UqOC3/cHePlEKqCHIG3UqoMvl3FWp5AD8EY+GTOhcpfFq9tuqX7U7K4w41E0aHtW18
	 +PCxvAAKzw/UITrVE6UEhW4APjlFxxBzdZybm+QxwqVMUcAPNfrJE1rzKRO283IZnm
	 MJrOISCewIAfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60E39C4332F
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 06:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167047985437.20411.6385202892176894314.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e71bce25f4eec7c66b010e450fdbeefd174b8214674e1f6a12451872609bc36
Date: Thu, 08 Dec 2022 06:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670479854
