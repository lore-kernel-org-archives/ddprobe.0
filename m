Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 872542C9C
	for <ddprobe@lists.linux.dev>; Sat, 26 Aug 2023 17:14:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBF84C433C7
	for <ddprobe@lists.linux.dev>; Sat, 26 Aug 2023 17:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693070048;
	bh=sBHrDjMFUt++/9PcduPWsDuvKMlbvDUa072wEhyyhSM=;
	h=To:Subject:From:Date:From;
	b=ZjrQTJjiw/E1Ed1+9mA4+3RPPrs3QISo+epjrx+mPB6uyf5IXK8bSAwPraJ84pocH
	 y+8WZ1J8HW31EATgpFiqE+zRWEDNeXo0YuaYi+KW7wtF0l3Td+5FR3ueVktEVp4S2G
	 QxhwI+b5U/uCvdwz1udit/N+tg0HJFlg7+AXQhBLTwwnBfB56a4ZF5NtXmnwdYdZbB
	 ClypMOwSlpydAGnY7HbOr9fLDc+1l6nh0XVh7ju+mvI21aVA+jUt6Kjm1ySPvbPBKL
	 ZyAaIY4VxdhHSohMl9kZezo5WGWq6FqLV8JNKqfpz6ClbL4zbxWoIr/R2zxBfMNTnh
	 MCAiJraxk6NcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC9BDC83F15
	for <ddprobe@lists.linux.dev>; Sat, 26 Aug 2023 17:14:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169307004869.4730.16823279679712072848.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d1f1f4bdef944675e83bd625ba1f4ec2e561630308b8f8dc584f5f20df5d650
Date: Sat, 26 Aug 2023 17:14:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693070048
