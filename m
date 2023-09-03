Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7BBA57F
	for <ddprobe@lists.linux.dev>; Sun,  3 Sep 2023 03:34:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7A6CC433C7
	for <ddprobe@lists.linux.dev>; Sun,  3 Sep 2023 03:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693712048;
	bh=S/c64/OofirQD2eoOJdjJGiTUyxBEvi0dc33hceifsE=;
	h=To:Subject:From:Date:From;
	b=F1Tww4m/gTndrUIIGk1uDigHTt8LWLohJgxHqBQg/SkN69F/CGL9zAYkIYfM7KhRQ
	 0Dy/PnuKfvTquE9ER7ggzP7SZ3PFsOcKSBGfOeoQtH6e+qIfZd3v9b2cDoga3UbryL
	 aA+iIk5jjxVaHET61N31y4ZOKLDif+47CLw6exqyyekhdlZ/FeT6iztSpZ5lyfDqpB
	 2FSIbE4NzR99zuOyrip0HKVQ0/z9DFL7e4Ms81XqWbVMaZgDgyY8AqxBfwiau0U53a
	 13JG58fJ4B7cpVEmJfaBRFwMaNfTA+6/EnD6Fx9NMBRG66+qp/FeuHZIBf7hHc0GfM
	 jPIEzNQVh1pHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA051C71153
	for <ddprobe@lists.linux.dev>; Sun,  3 Sep 2023 03:34:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169371204866.18484.4444777325599213370.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c034a78881ba402d84c0ec04b3e1c88a7289b83b92d3bfcb686390ecb542ca5f
Date: Sun, 03 Sep 2023 03:34:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693712048
