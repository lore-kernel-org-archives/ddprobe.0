Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D106C7C
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 10:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86398C433EF
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 10:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672654887;
	bh=4gygbW5WEzcmBxeOJANNpqTAVhpYwTgxUgnUuF9x4qg=;
	h=To:Subject:From:Date:From;
	b=eSEwbRc9wRTU4sIfWeR2kH84Ug0ODqO4MG5zqFeQ5OVk1A+oAUtkAiAfii0EUxUW+
	 /7GVH+lmThFWbbZ7HIaRM3gos8Cl0RsPM16tC3z3NYzcHM3dW/FygyNkyQXEshUl24
	 6K+KPh68+HB3LrpoD0CFAXEPzx7I96LdZjcMTgvr5+3HPea3Puupp6F0UcSX3g+p7I
	 QtgmJSgVsmdQeQeltkaLDsY4DDpNz/MMSDYBZEJNroBswXMH2wPjuqOtVkQp7kOFKo
	 0S+BQsAeNKbHQfuDrOrfVLM21MAKJM1/JbC0ohmy7vcTF4e0Sjft0gB8pw2rKUmJXd
	 QH1iA1l9nj8TA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64D40C3DA7A
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 10:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167265488740.475.4971999940373211712.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22e7087589101eb716b6a2bfb6fd118cde139dc60c0a38410ae4a6b797beb71c
Date: Mon, 02 Jan 2023 10:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672654887
