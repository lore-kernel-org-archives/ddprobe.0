Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 209B83D960
	for <ddprobe@lists.linux.dev>; Tue,  9 Jan 2024 20:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lSWYD5ra"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8C5DDC433C7
	for <ddprobe@lists.linux.dev>; Tue,  9 Jan 2024 20:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704831496;
	bh=MZGB7IeRmB//BnGMzWXNyrSyEkxbRXdqoTI4NuGK5zU=;
	h=To:Subject:From:Date:From;
	b=lSWYD5ra5gRIFaWsKYxBkvrWkD7ad72xm+oMpY98vy2lTItBM/XtliozRRKqguTw/
	 AtBymxKxRk01F4Gwd5w6I0BScYmryzDn6mFcuMS4p6G4+kURFQdEHxrbO2Vq+OEPbN
	 w7bOiCMWZL0VNqiELPIdNxp5wMMLFDDVmfl4mkvGqPG5V8k8yOzafUhfiUfIwjnEfG
	 oHfGyHj49UWqGHBpINm5i+MvQ9f8HhTbA8j8sq8wqS7gjtXwcCDZontX0a7ZgRCDrT
	 NTB26PkU8iDhG/knSL/DzGUs6YAX9D/Sf4rfakg/sDG8+lOIPxNSdO4F9pIS44FOhy
	 brTN5L4PAdfpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C843C4707B
	for <ddprobe@lists.linux.dev>; Tue,  9 Jan 2024 20:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170483149643.23115.5280086951059850741.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dcfe55111a6779e6ceee85ff740c019929dc9e340fb866f02f099fdfc8140174
Date: Tue, 09 Jan 2024 20:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704831496
