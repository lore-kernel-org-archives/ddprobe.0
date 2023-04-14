Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A7796ADC
	for <ddprobe@lists.linux.dev>; Fri, 14 Apr 2023 22:13:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F2378C433D2
	for <ddprobe@lists.linux.dev>; Fri, 14 Apr 2023 22:13:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681510386;
	bh=xmoFSWGAzwBsvobIVnWuVSOVrN7zJ5Ujj8wd4NKueSI=;
	h=To:Subject:From:Date:From;
	b=dzROVcPc/vlCeZX3h524YRO+cENOmwjh9ZSdmJ46bW7G0KhKTXjyxYjxk6sQJzxe9
	 /Jqf9jlD9z4Sye3/2d+2gWl/tUIyWEloWV95+/pl0JE6b5HNGDkfAEEQdog7rmlw2U
	 gYPb6iBrXE0BBgjLqicr6XcShC4al3oEDyjhff7VWxPjC2t6IyK6qpAVmC87pMDKJH
	 x4EHQfhhg5xCYEDcHWBGU2eQEEs5LDNpJlFOOIAxl1vRwNv+CxMlbnxfPM/XNeAifr
	 EBrio9lrccxK+H6LqGiDC7/QNVwEZr761nYpAUfdlmVYKPN3EYyUcb7dkjzF8vamQD
	 aH+1Smu7FgB/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE927C77B72
	for <ddprobe@lists.linux.dev>; Fri, 14 Apr 2023 22:13:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168151038583.31304.12688619710021529507.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c8afb25432d9e4588225128804ab8b8716358156fa942847e14f6aa88d283fd
Date: Fri, 14 Apr 2023 22:13:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681510385
