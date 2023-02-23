Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36A11AD20
	for <ddprobe@lists.linux.dev>; Thu, 23 Feb 2023 23:35:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D98F4C433EF
	for <ddprobe@lists.linux.dev>; Thu, 23 Feb 2023 23:35:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677195305;
	bh=XVi/Q+mrGvjilLTHAvkbL+pjq4sUEXpsbDG3nbGjDGE=;
	h=To:Subject:From:Date:From;
	b=Y2bVA07EJXo0X6zQdapB3yLtYUz6t1rxeCg/wUtml+X0GHkaGlJt5ANh0w2lBSbjs
	 uV5Vrem5G+K+MxCJaTSEpTFmYXViGNdcd04lLQ9QMuTIEVswSMXpjM9YGDGbDTdxtL
	 JGe+kPApheyLA/417WDPxoU21Ga+V3bk0D0IMCgOKUrCxu8w0Zp04mwd2w+za/+29y
	 EXgTfxWu4npbpHLyN//JtM4LgMzytM5V/7+dnhAhSY6HxMicb17+ibwKS3CQXKwLTB
	 9eU+zg1AjjSjvA7npXPS1PFtN30+rtUrh30VKRLdc0gnVTKGaj8uUOCOBLcTZfeaMx
	 M+b1MIgILTTEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE9C9C64ED6
	for <ddprobe@lists.linux.dev>; Thu, 23 Feb 2023 23:35:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167719530577.18777.5000838046811431565.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3353270caf750319ef533f121967c41fd754fc7849f3b4132720000bfd20e754
Date: Thu, 23 Feb 2023 23:35:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677195305
