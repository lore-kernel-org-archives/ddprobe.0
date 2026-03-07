Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1508B2D9499
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 21:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772918694; cv=none; b=kX3UBZ9zXwSr3uR1YguKDAkQuuqsoVmHmv6RiL83liSFJHJmLvs2/9ukXJRoaIYJsOApPojuzBKD7ookf3RZ//HNp8918f2hoh2dFnAgSRhpoS7ymAkfqZdS5TOk2Yu2xhzfzuo3gjg5lI98++PjqN3BRSLlxUIeC/Wc93LpSf8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772918694; c=relaxed/simple;
	bh=hppcMm/5bLNChh2wFWei8Q7XKWv97NkTe+rqdPsz5lw=;
	h=To:Subject:From:Message-Id:Date; b=Hc7w++C/yE7cLV2sxotVdEAiR9SLIhJ3qVdlAfASmIl6fGAcHS6tRs/XsQJ8R+2XZ+2hsq+aL85PHr4glScyeZ8Krq4KhJ0YMb/G98kTHQKlKA1pMx/jVLvgf2/Sg/CEODGWbbTCyx9hMTyoJBXqbz6Jgp/UJa12LboSCt99h0w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J342DIYX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J342DIYX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E4BAC19422
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 21:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772918693;
	bh=hppcMm/5bLNChh2wFWei8Q7XKWv97NkTe+rqdPsz5lw=;
	h=To:Subject:From:Date:From;
	b=J342DIYX5luvHKULa4F8acW8F3G9rb3zbqlbZkb0/pF0GzxPhW6ta5WJ940EcDTXe
	 GS1u4sS8PtSSY+7P5jOBua1Eaday2OZ/IamZR9MvB4+VXfKhkCkW1P6RQ2Zc0yuGKx
	 nsQ++wOTdftxB4haZU2JMTJbn5i+mnHJEUxpVlwnEcoEDvPzjJW4llCcRSCpeCUuog
	 6U5OaDMmGJWhPxb3ahV5izpjLvX6zQFPR5J02YuBK1Ytof6Z5WkkYCWx4Gr9LV35cv
	 /kfCpxLJ6pm52H3ci6ck7dhHLZQ7E4IAcCnSnnOzmS7IYBjzAv7OlOhGQx2I1w/PDS
	 io0GgZA7VG8gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE37F55104
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 21:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177291869357.5912.10345643625130698954.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16751f0431931af5a38ff6ad268d2c7c646a55a60a1ee353bca4bbf362216cf6
Date: Sat, 07 Mar 2026 21:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772918693
