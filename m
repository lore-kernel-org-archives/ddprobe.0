Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A17A275DF
	for <ddprobe@lists.linux.dev>; Wed, 19 Jul 2023 19:52:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE228C433C7
	for <ddprobe@lists.linux.dev>; Wed, 19 Jul 2023 19:52:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689796328;
	bh=o9JBeHmQ/zSyRAwm7c7re/OttSt4Sifd2xWIxdvdIQU=;
	h=To:Subject:From:Date:From;
	b=H4eMPGxGaq7Cph2rbzpDKHfPrSaK3fDUFg90iBecGF6IqMG9VB/Vf/Yzfjz/C8NQc
	 iXgj2bip7UF0fFoFHKzn3unhRVb7nofCaEKs/cyTgonuwIi9GDFidza5rzTtLPPlZn
	 n0qgoSw0xq+WfWOJiO5h1mzeF9IwN3Fl7B/2QAOUdwQ9DinkRzh151ZxAugfqgGaS5
	 sH6raNoZJT8GG0QWJyCT8Fr8X8jAinNhpTigFGdJEyrgFt+73V0kWOyaPrj2Kl0vL8
	 aolbOJsFLXWKUkqS0dCh0YCeJ6Uv12dpfrozRSTvS5R10rua2uW5fAHP/mGWm7Mgp/
	 10pEsk+t0bcZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD5CEC001B0
	for <ddprobe@lists.linux.dev>; Wed, 19 Jul 2023 19:52:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168979632869.13330.16244367638485745245.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 667e03c638523f7fcff4993c709be9002c553cef5cd9a66c7162c08a1d9e0d8d
Date: Wed, 19 Jul 2023 19:52:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689796328
