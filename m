Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C037E2573
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 15:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E814C433D2
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 15:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671637287;
	bh=subz2uZKN4cC3qPyLfX89NRolma5bbVsCUkZ9gKdkck=;
	h=To:Subject:From:Date:From;
	b=FmIXiD1mOZf46RL/jlDO/TQQUdwvKz51M0sYH75r+5z+HxHq3NFTUPCEwcVrxdAIO
	 I0GvZxTX947LOIdNrL3FyvGJUPj64FPsC/manqkwj4/2sABsC0fhbmbpEM0w2rzw7+
	 VrQnlLZuAPQ1xXv4AdVBK6eMmTHqwf/YOmJwfrk6V/pvZnjYnlIYiIy+1j5+TaIvqU
	 on8OXObfJ4uMgFvssV8HUfJ2AyqOj+8Cx3I284PB0J5ZNs6loAZ/H7l/sr1f7DU8ou
	 ub0M6X4HrAhzxL0nxIAiki3EUnJ5Qp6K9h9McpW4VxKf7fiwSxPanZeFAK8CSNxE9M
	 hYP4kg6Q5GKYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62505C4332F
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 15:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167163728739.14139.8847085387521030663.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd818b2f0d6de5809782d41d41b70b0a943fa2704b20a2bf232c3bf513aa234e
Date: Wed, 21 Dec 2022 15:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671637287
