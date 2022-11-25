Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6A392F41
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 23:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 753FBC433D6
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 23:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669420254;
	bh=RlquYwwh7069xm7yKXNUXLD06dLQHDyuLkLwW+NBZ0w=;
	h=To:Subject:From:Date:From;
	b=eXzujkiKpP4yDT98TqubX/CkmLVsOpLsqCnNReackWDcTK3vsd74c/zQRypyHbdUA
	 7pZfO6KY9SvXrDspz8Cb/IG5Gilep9YDpfZ/loG0xeqQXz2rb4sth4BkOOCXDwwrIm
	 cUgnsaMiF6qO/WJf+ER1gR0Q/MmmjDtpTde05N9GVK74cLP7T7PGwHF1Ae1CQ2r2vC
	 mnPUjdF8DSViBb8l4MyUGJirtyGoWgO77tLfVHivK6qVKvdxGQdKl1Qee1pNgHLgwK
	 c9uAUYhLyVYVF5vR5WBE1d1WbObp2Wa8eW+biyVTKMbfzimygADjGyPP3Q9FNvrY2l
	 yWRk4KCD2BP5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C3CBC4167B
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 23:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166942025437.15883.11539280058714515740.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42c95abdd30ec56007b0c1063bd7c2cd72e96f2f7fb31f3ca0dea1dbc6683b5d
Date: Fri, 25 Nov 2022 23:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669420254
