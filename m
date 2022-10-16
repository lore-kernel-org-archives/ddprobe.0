Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B46871C01
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 15:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6EAA3C433C1
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 15:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665933653;
	bh=vSvxt1kMsz75ErgbM9FIaaLm4ovNNydt1fiL/d+kXug=;
	h=To:Subject:From:Date:From;
	b=tXSgS9Oo/aS+I01I7K4auZMMhR7iiQcmknVbVDFhGeqC14qKW4PxNJCld/7fi4xl8
	 LBftEKWvijtAQX994Tn6/opEj09eL2vb1aXzpAxicfoqFnclNcTIJCcm+WQU907FOS
	 yechLHuEhuJU69kFe1wV2HkqiDnt57MTisjKdTKJcw+UrlY1H0XRE/Ej5bNRr8tZ7J
	 DKrXGO6jwNxytXaYkYbp46+Qonmn2GHFDwXe0RcGGVwn4Y3IjcACZbNfK18yBDB0aO
	 FEbMHfZ307aw5la9ux5mjE6Vr9KkbLw7iN6SGe9At17XoyIj5hqX5Y5vwGAzsVAUbi
	 DWfkhYx2ThYug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 522C7C433FE
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 15:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166593365331.25033.6009839942900214752.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88c574171758a992f13d5140419742bf99f57af514d6c062ff3edb3052b50312
Date: Sun, 16 Oct 2022 15:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665933653
