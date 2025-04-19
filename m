Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BB46184F
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745041794; cv=none; b=cUzzEoOo5xXpHNdDx8ApJaoKxCb/3YVGLQJ5BT5K0spD4KDU2F5IjQ3IwD6jEgxntaSpkWlH+y/5j8iEhxlAxY4KdU+y+d37ghW34jQbLYchWzlUcihCQrGlgEegMGaWQna2rB+9hHlmSdNlB/f6XxI7BDxXLb/9iwtJ5KP8cIM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745041794; c=relaxed/simple;
	bh=19cx5mosf3yhhyUWDjOt6KzoShaXh/Nc4Q7o0H/eVj0=;
	h=To:Subject:From:Message-Id:Date; b=kMp+M7K9ak0J17bmzKycx2A1kESwxeaKpJriQCakgjOkvErG7dKXvZ7WzbrqdoBC/lol9g/5smw8cqqebF5E3nSAXWfXN/eLe/INPkCa4njkqapqOz4iiqucx4DGZPAeGuvKMbRpx3yjlr7UBWwXa1nBDumcDngumbQYfkuLQqE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BkpUKnjy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BkpUKnjy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE7FAC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745041793;
	bh=19cx5mosf3yhhyUWDjOt6KzoShaXh/Nc4Q7o0H/eVj0=;
	h=To:Subject:From:Date:From;
	b=BkpUKnjyYOh1h6+hOa3NV8HJgr3hCJJGp44n8t9jwM9kPr3QOaPsSbdGPaI64mJ13
	 ta/omYaH/WN6wrQtndoLhE4M6dIfZ6Egf+lggWCLvbZ/RelBCCkQaNFYFY7pwSKn/C
	 IYairuc2rwdlKf/l51yqgsoDwieviQXtCom0CHFzS2xDnFmk4DYCp+37hP96wzkVXF
	 s0FT8ji5JPyq/GzF4judOsEGNap8S5zJgibCfF4j62XlQjtdKfFvgAPmA5IKzWm3l1
	 njeScwGschy9TWPRdnp0JQZrwFTtPk/9Jvf/X8r8ddo5DcPm80+jMq72V1bdtxw0Og
	 Sz8GJl86EY7Jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B38AC369BD
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174504179360.22961.7717614505374254431.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54a1c89b717f435964a0c9b6935d8f9422ece57afae902d3cab2c9115e88311c
Date: Sat, 19 Apr 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745041793
