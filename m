Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC9815CB0
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 22:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 734DCC433C1
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 22:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665440453;
	bh=VSQoOE8Z8qmPANtlexflD3lzqGV/6IEDqdFqAA2r7n4=;
	h=To:Subject:From:Date:From;
	b=jWadvRbZHQwwRlSHovXJc+iBw1Y74YloT75kQ1U2zuBL5xBUh30o3EnblZ8ZByPcD
	 UC/N11zeM+D2GET13fdha/3cfkD/vRnH/lGH29Zc2t8Yj0jqRgL1O9WkkMP/lv63um
	 KyezbEI9YLYx6OYcdtC5k5WhHKx/AvSXx0BCnzQli+e3AO73Zu7kqXWZ9Qr9Rw0DxB
	 3MxMwTC5aYSEHCUh5EmH9gI21T7RxHDp0SLGH0D/M+B+QdCattEKUzSPvLkMQleylF
	 460rDpJiATmN7b4Trp+5e6kk9EFSSA/TrT13IxnKUzHFe7nnDpsDxTIpzF0/jqHZLl
	 TXQ+UqxfkaaQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 576CFC433FE
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 22:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166544045334.10619.13551319243059162368.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 315a43ca4ecce70f5fd834b413dddd05d5bb538b0389c63f3e37d019a54bcbae
Date: Mon, 10 Oct 2022 22:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665440453
