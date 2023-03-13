Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3468715A6
	for <ddprobe@lists.linux.dev>; Mon, 13 Mar 2023 02:27:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D055DC4339C
	for <ddprobe@lists.linux.dev>; Mon, 13 Mar 2023 02:27:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678674425;
	bh=gUxRQ0difgAG14aY+Z+q24TW7gyEx7Y1wXu1QiH1YSY=;
	h=To:Subject:From:Date:From;
	b=kowhFl+gEaNHW75BgzT07k625ztwrgqFUfxDtywmU845wo6+PgGOpHyMOwlXEl1ng
	 3QLHvtIOOp6siRvZwptkZq6DB39XxWdhQ21n/wqeFzAP92fjOjubR9eieUUl8YON9c
	 Akt2taox1fO9b9A6RbH1M6nUFh/WByJ8xKhOlcEoRzTdfeYCrQ8GnamOmxt5CdZifl
	 4f+g/NoGff4oQb5PyPugiRtX7lz64GOEo5gKIkAT9WH3w8kkHxfX0Fpefypput/+UR
	 2gdqD8mqYoLmc6mf4Yu3WuAruAGPV4ppNwFsP/p1P99gi7yR/t2c+SyIgqSUXGrdYy
	 tXXN8PHqNYT6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7C9BC7618A
	for <ddprobe@lists.linux.dev>; Mon, 13 Mar 2023 02:27:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167867442574.5474.15580872366108738567.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f09e46eedf7e722a104ac1e9b4d929172ea9e30c2aa0f29fb396fc7a21b2c08
Date: Mon, 13 Mar 2023 02:27:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678674425
