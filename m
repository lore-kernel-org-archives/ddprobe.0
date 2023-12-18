Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA0BA73495
	for <ddprobe@lists.linux.dev>; Mon, 18 Dec 2023 19:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RWxUGVr3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A306C433C7
	for <ddprobe@lists.linux.dev>; Mon, 18 Dec 2023 19:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702928896;
	bh=oVu1XvSTTn9Un/Hradnu9kY85qog2f2VWQGrEtpR/eg=;
	h=To:Subject:From:Date:From;
	b=RWxUGVr3ogzfGrVt/nA4l3XGJEbTcrWE54ASpXYlDexTZ4O+/kRA3h14SmncssHj5
	 X1ubtcTJt3vv2tGcsp2QVxqLzz5dJ4DW9jfQHTsUrNAEI8rfZb1jtxROy+6diVBsmL
	 adArjmK2S/+xDktc+1rujHtUBjztOEc34nCL869elIINy+C3BXt3FMY5KKZNuSuOcw
	 uxzUmNS9V/SbeSVKTF0Z8D6kMseqIMRyEHuM7gUCusRyAaoCdXSb4J5/Ntqzhhcx0s
	 rgUZfrsEf0Ozlj9tfQJnN6XQ4UkW9fWkQXCwniRbAdNDqiwsQ+h3etOIShST3RFH7N
	 rvSUl/qhj9r/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FD74C35274
	for <ddprobe@lists.linux.dev>; Mon, 18 Dec 2023 19:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170292889638.21613.7273280368270125939.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15ad5095ab00cba9eb0b5d0bef30ae210887fae3e1ebe4de2043330095fe7787
Date: Mon, 18 Dec 2023 19:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702928896
