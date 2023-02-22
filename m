Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55E49A92D
	for <ddprobe@lists.linux.dev>; Wed, 22 Feb 2023 21:34:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F2B80C433D2
	for <ddprobe@lists.linux.dev>; Wed, 22 Feb 2023 21:34:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677101646;
	bh=Q/gB4n4mj61q4f+V6E/ABEbbyled8bwdLN8ZHxhk7oM=;
	h=To:Subject:From:Date:From;
	b=kcTfyVib6IcEWP6B7kEgwCWSnsn48RmPVPJv6H/6Cr3XCFwdWltbWV85jwJdVrOsx
	 iQyhhpnX3eDG3DBEnmClyrTa0pWaSqylFBUNwlLGkIRaoVDv73236ljdCYrGzuBE30
	 qx4nihSlLFbttS9DFFA+O4yF/XF3YMhO7+KGcam2eypduTHtewnGyyUBClfxxuxrou
	 I4Nxjaq6pUtgIbUjk0FOG2XsXP1IDPKj972HtFKpZB0Qacecvof1MCSeqsXmCZbZV1
	 tYE42VKfTl3m1awJ7gUJBIqkGBFy8cvO6hRXN32B6cUp1AFQ8MF0oVu7yKDgDuEm3m
	 8HR4CarL+0q8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE58DC61DA4
	for <ddprobe@lists.linux.dev>; Wed, 22 Feb 2023 21:34:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167710164580.17497.14839024979742542533.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dfafab94999ba7a9791637809a6599cb3f4bb1343f19f476727a9a56cc2ce68f
Date: Wed, 22 Feb 2023 21:34:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677101645
