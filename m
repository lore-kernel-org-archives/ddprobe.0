Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B30667F
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 07:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68CE9C433D6
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 07:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663226453;
	bh=f51+HWO94qZ+ObBsORYfeiavZILjXTFOnl4jE9JQpYI=;
	h=To:Subject:From:Date:From;
	b=UuiJeyJ8ZrzLxxNlCrpRqxL3TXkgtxXbGgSd3tmCe8tA5RNjmTxYrs+1GupvLY29w
	 nWAclRkvjhu+UKfDBF4sFoum2qlLeLVv186qwThs6Nn8QIh7yXB82EbH8JrL6DKcIL
	 6L5e2emwK93AMZn0xrnf1pePK38uywQssiXLnXhQ4pnnsn58oZfMQ6d4l0SA3VfXzC
	 Llr98GWSOuqozPqAbxijx1IPZqNYEYtIOHAQFxLe/4UfhaIc/jh3iIdZv2FZlX6+Dt
	 gOHPTZDRUeQN4p4v9+2PiBw0WIP7eOe61MuZtFxlwv+aAsdSc/pkSNkpC2OhN2phdC
	 SABbDiEvmOFow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4DE82ECAAA1
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 07:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166322645331.18186.10792503155192890597.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10042d985efc68cbaf59c2bf06b883d0d67a1ff4954013ff06b8f731ca725db8
Date: Thu, 15 Sep 2022 07:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663226453
