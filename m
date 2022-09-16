Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFC3B6712
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 17:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 787E3C433C1
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 17:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663348253;
	bh=K3OdroWCNdl9FPVU46V6lUQrPpKO6CkRB0C2vNdUTfM=;
	h=To:Subject:From:Date:From;
	b=HADkbuHvjpKwL5b4gfGhTpUU/sjdA4uAqGlvrViXA/FUc2l3VU1fRKBhdnNcRIFhb
	 DeLkBaz59hIBBFweChgHnvkLrUBg/ye3j4yE4I75D9Y4In9NdHk9ZFS4L0boAAwP8C
	 R0BwgyFnUSeTgN+uP+xQp5lXaGEywJXK1ZYosSHf4DiRMCzorxJVY4Iqcf2TacdHYN
	 vh5MWCgKwj/L1KARXQHSV98ux/0ZqaJHK/fBAGfalK3LPIUItMbkp9rMfwdFJvN/NE
	 MYgdgtcgQKwX+HkYKpbkWO/SBQ/LpQP7HSpWci3S/SBko6FsTciGq+hCq3wHlEER3S
	 cwsTKD/P8MGKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CA7FECAAA1
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 17:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166334825336.16627.13894291289291328765.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2098aed8d9db5183cae3aa80d09721b3f5fc72b3229f7bc3073facd1bc9c5a5
Date: Fri, 16 Sep 2022 17:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663348253
