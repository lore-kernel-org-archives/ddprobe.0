Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8CC38C09
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 19:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80035C433F1
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 19:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673292687;
	bh=M+/W50iRYsYxbKUoEVTZznddeoLyXjOznR5Gw2Bo9eY=;
	h=To:Subject:From:Date:From;
	b=mrRwGKzjcCNBqeUSo8iVbg2f0Er/xiemvXhrRn12/Mi9d6vr2Uez19Jrw+hFYPndf
	 RF4tXej2qAByuTOpvlaUHJQCygTBqjrwr5albAnyQj5vIQxcdFlSS691S5XGvQEo7Z
	 6z+MNYDhrC4AN+BbiebVJ1K2h2GJvHH518C2ccOsrY/PorFpGBiAIbj8FVpbadccxP
	 Y04Qh41EW7+sFe3A5CNxXF/twIzGNkkavQOZlmKIR5A7lQP0X7BcvrPqjVX0zty8K2
	 noKK0Qj1IVbOt4/3hDFgdMlf/KRykLAVt/0o2My+cQrYEEOdCjYPks0Y8bfCEaxlkZ
	 LweVWz1CDnTsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6574AC5479D
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 19:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167329268740.3132.15843634030908246238.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c38fefe657793cf2da42d4f9dc4c057970ef802afaba207bcfc7edb4f1b0d5a3
Date: Mon, 09 Jan 2023 19:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673292687
