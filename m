Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D23FD7E
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 09:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D878C433D2
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 09:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672392687;
	bh=oAjzZUZfPP8gC8fwGuvsiWT0sM7fnU46bPs7N+3hGJQ=;
	h=To:Subject:From:Date:From;
	b=h1/3y+Yy6so+ilbBZ/2uj5zD4kjCkSUD+0gduHjZ1qrT3+7lLcxFsZ2g3y61gYirg
	 QFBAUwIp8pN0c2HJJptq6zbkusn6TxPjNAnTQXWObuHadey/rPCjXmCHscXLrAk7ND
	 1kp3Nz3Xd7/ESvFg1x7vnDnD+YNmM+mNOsUNmY2x6DMwToDamo/yd6sXWLf4eEki6X
	 xdsHalpEQl7GPddoEfW9jAUVZSbwhRjEvP7HBC9Hjb5e5T7/cCUYpMw9cTFZdoP+5v
	 Nl6f4INuieC9omhzY/8PA9kWlnhTsdzfq074Lb5iHaXIj8VriUmrSfD87himlpRACD
	 eUA9ENm1Wf71g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6108FC4167B
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 09:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167239268739.7302.1796102184086768832.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aca403b3a8af75600b0a821b2f3e776ef371f5cee7b128c7e9e40a69df31f87a
Date: Fri, 30 Dec 2022 09:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672392687
