Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C19427B
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 11:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 704A4C433D6
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 11:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664884253;
	bh=ey4WvqP3eETVNS9fW/I3l17eZNW2rhCtrHw8hCSzN6Y=;
	h=To:Subject:From:Date:From;
	b=Gcai0nqpI9YZMkSxpXQuR1R+55LWzOWvToL9LlV/nkKXBak5FJSPE518OrFijIH6b
	 SgZgTfJtTmFS7Bld3vRU/ejSkanS6XGDygTqtmgWfZLHYBMd06sW/AkhQuGlkPLIpJ
	 uBt2ewHgg+WA4XVp8Z4t4H1QzXzbfOgD+FAK2+Pg/EaYOttrOApMPki0AfT1UatozQ
	 AiL9171VQIDTgRgJ8mvTul4XVI+bnHKtEcw3HYaWGdGCOSlypGPWoMblFKQLdHJBh0
	 ceVjvBaeLLuNizVCxW4Ddq5OSSO/5eimus/a3X7em5zL3hM79iM1DoAFd7rj+FPuXx
	 JKoSfHmoY7oGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50B7EC433FE
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 11:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166488425332.20966.12073386626514473162.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47494729e1bfdb32243d5031603da20a1fd6b44f14d92314452223b907d0ced4
Date: Tue, 04 Oct 2022 11:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664884253
