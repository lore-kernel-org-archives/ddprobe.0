Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84E6A17AA5
	for <ddprobe@lists.linux.dev>; Tue, 29 Aug 2023 19:14:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE1E5C433C7
	for <ddprobe@lists.linux.dev>; Tue, 29 Aug 2023 19:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693336448;
	bh=8P0oV1N8q9oaaPFtXs9ABIQSup1rTXtlgDwcJwfVrO4=;
	h=To:Subject:From:Date:From;
	b=DGtQ7F35Xtns0lriBc+hlQtYxxayL4GKkGlh1HkD+NMkqDOs5SddER8l8d5Lbu9B+
	 Jghm+7ISEnGgIuego41I4PNL2nrAFY+Mkm4zGHIV3VgSZu5WbbmfeyK4uYdPACrBVP
	 PlQTVtr18ZYiORJrGxf0ytA89M8jo2N6FLIJO3xU/hETSR1JhNlHRCvj+HC0B1avxt
	 sT6dGxlON8SqAfr7EQ3INRs+oHb09jCRbZ2wfDtcCKqvXiyOTXjWzg63AFtiQBQDT2
	 DcM+KGQ+CmivDwH9P5NPBxHfXIprMsEX+bCAqQIyWfpDID5RpSrIf+kpHZeUWGUMCA
	 R6NrWMFQ6HpDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B458FC6FA8F
	for <ddprobe@lists.linux.dev>; Tue, 29 Aug 2023 19:14:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169333644872.4253.4426298936964202872.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a95201052cc9bffd5939033f45d14ad526cedf92baa8d09a7c1322d83382c164
Date: Tue, 29 Aug 2023 19:14:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693336448
