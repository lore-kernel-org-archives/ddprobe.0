Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E20219B
	for <ddprobe@lists.linux.dev>; Mon,  6 Mar 2023 10:57:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3F34C433D2
	for <ddprobe@lists.linux.dev>; Mon,  6 Mar 2023 10:57:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678100225;
	bh=Jpo0GVxwfZd4uKqatINa/2zSMTll8/3zWz32lICCVvo=;
	h=To:Subject:From:Date:From;
	b=M0t9rBg3Tyz8G5SnotFeCL1PGl8W9F0lTmjKnOFVkB7aoxMV0JYWEw67vw3r8hTto
	 af9BMBhuP1eDqsgEqVdmSmUq8KGB5++xMF9uu+X3RmV9awDS1T9WEfwBEEfZj+WfDF
	 srGM5S9G0D+sAD51MV07OMSmOuMN+wpaWePOBQ3PK2QK6lbiixosc02lzNzUIq83E+
	 LYtHgJ1U30GYOQxrMNNx9zcpwUsmue+7mfeEkhYJYjtJ6ltnLMA9zjG9YeJpfOWI28
	 NzHsjTh1HG+4DuRpwYTbsklLjxgrvQT7y7IMCmqrlQ91jB4r84oMqIePJoyTo+hj4f
	 nynVfwnn8c2+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC80AC6FD1A
	for <ddprobe@lists.linux.dev>; Mon,  6 Mar 2023 10:57:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167810022582.28263.259559398598905287.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9803ce070cfd5e14c9f455c7c63c50831082e5cd4968357378ff5a94c3363c37
Date: Mon, 06 Mar 2023 10:57:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678100225
