Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D618423A3
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 11:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 791DAC433D6
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 11:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666956654;
	bh=NQcCn9UnPUEXdfQ+EXtN0+zW/XPDvEjWv4BIUpW7+TI=;
	h=To:Subject:From:Date:From;
	b=lGeXYAuV4G47MUOgIK3we1pTxnEFdllbZgV/hMtgMSzvK8H3fGneJ1Ph9MJtjqEPZ
	 Yeqoe5jBieYVe6a3NYIWPWD6FXK2P4MDKCgEG6p0RWzACKeN3brgTU2i913ZjbNftF
	 bMwFLY1l/aC6Mjvz0DjjJfCWxNq+isDjwkUtj28IId7V/YSDO5Ib8BjYr0ONOMx2//
	 zv80z4AzspNn2kYIu5qmilwbo6QtFsyM8i8i1/9AbIIFaxZASPnOnkvOobYwRpofie
	 WAqIluOVzVQ3s6gaOpPDBFurYTmsaPp8YCIH49Qig+AAR0jw8/tBoQiGa24tuHuaeH
	 XWCBIaBnixuWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CEADECAAA1
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 11:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166695665435.30904.17275032054041261601.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b83f54b28bc4104a2779ead3ec56a3f5436da10336fc5889c447305e09551e68
Date: Fri, 28 Oct 2022 11:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666956654
