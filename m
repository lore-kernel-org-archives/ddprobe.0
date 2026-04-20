Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C3E8288C08
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 12:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776687454; cv=none; b=G/Gi2mqJvzZzMfXyngdJSS8F+L8yAiZCHVnrGID/zeHDC1moZhxIAxiCcdPxYwOhdkO0iQo+z2wFAp4YRJxc+/ydhmhzFD6eMEnczPhFYhGGceRvJg2iaEoR7y0BvasEfQnqeuyXOWja8QNjUYkVPwH3X7+uFZ54zwEoVHpOcVU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776687454; c=relaxed/simple;
	bh=y2Y+5N/4UQlYL0LL+NZZgOtKXttvUfRnnFV9ILAS45I=;
	h=To:Subject:From:Message-Id:Date; b=n/9nnIEjqxTm+t9e8J1so09xzSqN0xqUcljZvCymxa5ZpCUZBAtIg99Zv+vkyGMO7f8i2BG2yWReNfTLhy1t4VPgdQ9FC4FZwNBr9wtZfCUtX4hjpaUxEOe+74QzTetPBMjDhUg37i+nWtYr7rYiI5yMFMPE4gBifz2XKfkYO/Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cQV2sL8Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cQV2sL8Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5619C19425
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 12:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776687453;
	bh=y2Y+5N/4UQlYL0LL+NZZgOtKXttvUfRnnFV9ILAS45I=;
	h=To:Subject:From:Date:From;
	b=cQV2sL8ZU5XNhUl7pMsveLZfZ3JXCY9/3Co1DzhSzmoZ5V7gsfiIeXgrmerAqH3SI
	 smYf0IAWCsTky2vrDZ+YN601x/dJ9JM6qw+crcQIHhz9cQh1z5RCEFCfuQ3FwGiYTP
	 TDlDa5xUHKTNNa4jCU9fPFmcoThFWHEDTa2RzmztEwnpv2XaDaGXGfgwlhQqy+Sa1o
	 S5k+yn9vp2s2P6zVRDEzW0aRip7+oP/QMbWEDfzh48I9P+Mls5cgqdEMj12jvdESvq
	 EHzpiqgP/FPy1Xr1gLjmSQztsphAn+6UCUDR0M+Hr2xtqxGODaqTe93DpFr/bqtoKU
	 jMqUIaDbfISMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A99D3F588C1
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 12:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177668745368.6982.4995250129601893714.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e81a46cc806efebd8385d8cff6346404396ff1d9a75b8aadfde4be48e1f4bee
Date: Mon, 20 Apr 2026 12:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776687453
