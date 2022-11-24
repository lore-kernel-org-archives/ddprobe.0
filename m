Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C21B023A0
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 08:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A248C433D6
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 08:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669278054;
	bh=h+bCoZsWbRDhUPjHrALs6ldTcnF5Llkatz9lZ7Sa9fw=;
	h=To:Subject:From:Date:From;
	b=XlM9/IDqEu7YXOKyrjr2zNPzHvI6IeNV0D9llL9eBtj5a5cXN5Op6r8gx9FTz8scH
	 XFYcX1JLyCHLVrCmPd9YGD9rKy7QnmtaqgxSXfsWGFqhOwCGo2EzCc1JDg/QUiIwlh
	 CH6op7qC2PZZGoEfstWsI+HcgEeUzsnyao8sU/tWCowJNvVkk15cQ943jK72c0wx/e
	 OOKalHS7Qqzg2aEfzYvg97BV9iSn2UE1UYOcbzVGEQJtwyGenxfOHiaIHqb+tomKsE
	 GglM/fK4YLSXsJEoxtLsoUMDxhSf7xeNYncFzK2LH53/y2O1dpYqFmsFBopmJu28ym
	 NdvoHPVp5yezQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53AC5C433FE
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 08:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166927805433.3718.937311354838523408.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26af246bf845bbd01fd0b06e9acae401030444c730d6fa6ea0b2899442d974e1
Date: Thu, 24 Nov 2022 08:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669278054
