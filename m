Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64381171CE
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 16:29:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAAF9C433C0
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 16:29:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686932948;
	bh=4uI8FJVq5wqVqZ9tc48BcvJLT+EGQqfl1qRAik7NnaQ=;
	h=To:Subject:From:Date:From;
	b=YCYr8Oufe5X3/K1TGBtsh2LCmO2g20kOQ1z4g1dq2iEvQFJYVqWUUTuxmKosWBOeI
	 20B3uZqbDAZ1YxbIusO4ddOwGHBt54YT8SVl3BBNuJ38TwaXH4uYdzzQ+muyIoZ6Tm
	 W6qYCc6wURC1/mkMVgr8pB72uCx4NwGnXlpsLCUK800OUZ6vC6ZC0BZKftwSK1cmUY
	 yFHSOs3PNaBM2Xe/DoEY4oPkc8hIhnrqvaWPPEuojjqNm6+locKXpC33LKXD91lE/l
	 N1tHHqPdhfkCAhLpUd7yRnE9v1u1LbDVqKxB+kl+C72y/Kc2Ja+QE1JBhfyPhgj6kJ
	 NJDqGdB2bVERA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFD9FEB64D7
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 16:29:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168693294870.16324.916598763128379651.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a3225c6cc104fe234e2175e1bbd5692283445a90cb9ab0527c235a1499f52ad
Date: Fri, 16 Jun 2023 16:29:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686932948
