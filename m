Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CE6D35E1B6
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 23:24:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780269875; cv=none; b=iK+B9Al9Gnj6Ivy2Gsh7EmXu1YF84RRYYexi8y9OHY9zM8/e9e9yqLLY4Y97lSNajbMu9AFP+hbfuPIiLh/PX2ZiqbLnI1wbv7O2MmRtczgtuzr49mmLqAFDD6hDJDuwhQuMGGfDvMl96sWTdsHwzLnCmv8nhhZRKuFT/qzZ0Eg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780269875; c=relaxed/simple;
	bh=JklnwTxcstqtP/H6S8vNvIZ5T5SDsJSxl4OqxrHvk4A=;
	h=To:Subject:From:Message-Id:Date; b=Ul96KzX+6/QDQEA32cOlF6gNyxcNF1jIAKKp5q79cVMxqXl95stuyPShH3NIoeuLZ61p7MOi91pbqY2SwQ2kpn1TL2+UaE/vhf2PSHtRv0sJsezfdvur3FWC/lTwgK0oROnHrNUD0c8Ae1PgfptAJ74YlLwRv5LzsrDenj33Jw0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UGsnlBs9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UGsnlBs9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 2634BC2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 23:24:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780269874;
	bh=JklnwTxcstqtP/H6S8vNvIZ5T5SDsJSxl4OqxrHvk4A=;
	h=To:Subject:From:Date:From;
	b=UGsnlBs9mrTmY4KGjhWOuAwE4YLgTZhI3rc29afhene7Z3xWDK1G7dgfq5sd7ctqP
	 7liZuAE0OvngnuzSZpXsHYYoCRvItbLfD21GbOp+qcTR4BoIAk9Z8TTuYhAbXHBADf
	 6bZkdIZTp8nJg7ToKK5JTCDjkmoteQz0NPtjf5iBOqU5k0QhcGOLIcH/8eDc+xFmL6
	 iKnUZTuuycpw8mq6I+pbzQ8vfqQHA+5owg3u8pe+vqXXv2oNUdGFY4ukN7Omv8Gdvr
	 oV1rG3rW2f3uMC9kAb5SRXXw8xvCZVxiIjHgJ3a5RmM8FqnHwTTLaJp3ISBO9BsLrk
	 yINlNJPo/NlHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EA4E1CD6E57
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 23:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178026987388.26519.8605082565929088630.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82eb5538e8f13687def21025ac127e5bc86020eba357a890bd9f61660d2cc032
Date: Sun, 31 May 2026 23:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780269873
