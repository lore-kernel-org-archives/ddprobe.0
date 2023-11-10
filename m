Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2676214A97
	for <ddprobe@lists.linux.dev>; Fri, 10 Nov 2023 13:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="swcp4L/e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9AA4CC433C7
	for <ddprobe@lists.linux.dev>; Fri, 10 Nov 2023 13:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699621696;
	bh=7V3HD5EPsAosl6zBRVhLteDM7UtN+GXBd7+in4e8oik=;
	h=To:Subject:From:Date:From;
	b=swcp4L/ezwet8FxlNhVSi/xtloZpyo61NfBtvcjVQwqnxYxPbnxbmZWpcoCkK64+B
	 z2cK4tWx3iWbawL7o/fvw2d+xDZ5TidZPhMOXcj8Ry2hAwKfiWfBbZrpAke0dWfgxu
	 TaydX9OgvptwNnoIdMZQKfF+vhbquD+wmaRIQ35OhCw8AdZgIlGkn7GgK6Uy1M+j/3
	 8oa4MKywiFZlUYkzOqeTVJzh3cjTXbY0vOnV3JZRedjSpPJVIDbAHJIWVJZFILAyHg
	 Oa29EUHEW/D5HcJ4NSHhvsxXt1gpk1D10GAcZbImRmeS2RkXvSwv4+3OV6LEvQCh4F
	 fO/aLF3AK6IDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 798D7C4332F
	for <ddprobe@lists.linux.dev>; Fri, 10 Nov 2023 13:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169962169648.4878.2454395199403703454.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b67a1203de3e8996f02aee92e59dd605a7c81dba6dcaaf865afaba9f8d230e1e
Date: Fri, 10 Nov 2023 13:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699621696
