Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 490BE22E52
	for <ddprobe@lists.linux.dev>; Tue,  6 Jun 2023 20:12:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5892C433EF
	for <ddprobe@lists.linux.dev>; Tue,  6 Jun 2023 20:12:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686082325;
	bh=YJLU4gWdhdmFMaLulu+d1FdFlDVSXV9NJ9e77Rl5GvA=;
	h=To:Subject:From:Date:From;
	b=QkNaBexncRB5w3O7JlQ8fIJKQA+Nb/5w2kCosTxJg2/yUYIQKFBLtDbL4iPevR9XZ
	 zCL2B96GW2GD3gpJP1MXi8WMOQbBUHSEMUPCvjUvO1jiasu3YQvtLA1INpZ2EmMCbL
	 HWQz2Y32HCWLHrXgvEx/1OZocg0Fe2ErsbX+jOoFG62CApiTeOWgcUWIfYMZh6udIM
	 SguxeoxKgGGhsDwLPJbWZkSrbIsvuYbYRAuEuLKV+UqKQ2+Tvopj1t2EEQVM4x6wBc
	 jNItYI8IvqoBD/WW4DNriPd/+o8imzb8QUuZ3SM7M0QGpL0DzpKD06d802XXKuB+Dp
	 2CZ+c+QXajN3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB8CEC77B7A
	for <ddprobe@lists.linux.dev>; Tue,  6 Jun 2023 20:12:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168608232575.15358.12833451749829848814.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8e1155ddc173ed80e24667a8468b39a72ef48a9eeacbb99ed271e1747e2cfce
Date: Tue, 06 Jun 2023 20:12:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686082325
