Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D812415A6
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 03:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73998C433D6
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 03:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670122854;
	bh=Q/Txcb8KTNpO/IyZYlmumdb6M46gcTAhT9ubf1RO/+k=;
	h=To:Subject:From:Date:From;
	b=eXEGbgrbR19OgcIxwQuJBHAuw79RNJA8bh3Y3tdJa8jzwKE9n/Qqu4v6aYJl6oTr5
	 x2Amez6bMIJUerzRMCNRAxSTJL/jcjL6e7+mmPhDO5wcTOuFj5U+idLa9qDtuSvl7E
	 64/3YXxCXIK9AK/G4mFLEhq6sHWFKvOfNE+f546KBL7OLi+ZWREeim60n/wcdDWGYf
	 P0HiTNjBqsCE3O4YDgYNOdgIS/HGVc3Ckz3rf+rfUcfbq3rBdvBRlZPHDJhOQxEbqV
	 +C7MP6zaeuoWqC+iuc2WX1wOkMRx4mhXEOAxYWcT8P3jd1ssMNX3wxogbNNFIKe3Sa
	 RWzanI+qSpIrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 555BAC352A1
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 03:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167012285432.3584.11966955683247659550.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 713525f8410ae94e985749247c7dd914a124a25fbd9a894be43a27dd18fb6ed7
Date: Sun, 04 Dec 2022 03:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670122854
