Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E19AC186B
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 05:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73EC5C433C1
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 05:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664515253;
	bh=x6iwuoQcyK5YyszKrgagUQ3NmAx813IZ8sOPPULls0A=;
	h=To:Subject:From:Date:From;
	b=us0lx4pEHwSuJf9aYbHl5GQd3mh7KtjYiLbCZQYYQhok3KH/cjDO08QNVR9ETJ1Gt
	 8CCcaOZuTaiB4FXXoeFuABSXDIZhNLvvZoriR8/jmxHo/U8m4+P3ZYaddH+BLWb5Gv
	 oh+eqTgE0a4CQjbxSY4+LNevTksPl/u5vnkLR2NaZRvgGfUuVgScYo7FkfdLcb1rcv
	 DvdCrn+BAo408ImQZAsTZgV3p/a0Gn0hROZqa3viNu1blHgm3gykHq+dwhH14yTV0q
	 abXfuPAYP/kshuSdYZB70ofEllEsT0tgB8RnPomOlMyiOQryZjSHjy6bSYDGG7ruWc
	 Elqywn3IjMtlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57C19C433F5
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 05:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166451525332.22124.12406803744113768066.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 967403e88fbe9bcee7787f280b6ebc2b896ed58abeb39de7b5ab99b810c626b8
Date: Fri, 30 Sep 2022 05:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664515253
