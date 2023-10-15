Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64D5C23A6
	for <ddprobe@lists.linux.dev>; Sun, 15 Oct 2023 09:17:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VSMA5z8x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5D06C433C8
	for <ddprobe@lists.linux.dev>; Sun, 15 Oct 2023 09:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697361428;
	bh=jXKiS3zft01Gi5cwfwRgprEv1gKfC9NYJNnFQamiD3U=;
	h=To:Subject:From:Date:From;
	b=VSMA5z8xtnUHLfXtqhzcP9f06S32OEoc3GTQtYbk0NKJztJo5xELsI/1cElacJ10l
	 Tq/bXbPiVwo/XSywj/YtGVe3ATTak/MxtqY48wnUK51VGccHa3KYJ61QxdMlHtJ3yW
	 SjRZhl15II7dla/rhvoRdIcLzU4khT8psZIYebs1ZD2jFu1FqL3e6nbXujmUp2lxPd
	 GlKtYZ2wgsj0h5Xm6deZZbxfrF1DDeFVb9i5YdpCx6dlkmDqXtQSvRLFuwSX8ebLlQ
	 o9Gyxk+YKItgqSoAKfpHxFdaBXDH9lKN6Jq/bN36OOM3KylSZnTswXfKM675C4mHVK
	 4QBeeTBy7qrog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B03CDB483
	for <ddprobe@lists.linux.dev>; Sun, 15 Oct 2023 09:17:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169736142868.15348.10102812876596241220.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db11986c33253311bab82cd1c88dda3b4003d43e890dd16df3cfa87f1649858c
Date: Sun, 15 Oct 2023 09:17:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697361428
