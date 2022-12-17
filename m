Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E773FA5D
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 17:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88AB7C433D2
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 17:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671297087;
	bh=/jnf9ZOpSZPm8eko9DbUZOegN39sJ2O6+GysvzDNEgg=;
	h=To:Subject:From:Date:From;
	b=JFH8nF9F/wSTyymC9vjXLmho4JuAzGa27oJzO181n3oi4i1ON4aEl6YIV7znQuOAB
	 LUKLgCu77THQYLXRZ8B1ff06+o7QuvOaEVt7J1chdbpettP8qgjE3mXXPSfOvhTl0a
	 +lmgLnqARC2zxqZ+ayJ3MUPEu3JsUCwbUtveKaPF1H3w+dhr+FAhgaF7s8VRVfJ/U+
	 QOJ7qU+gRS4bJnuMzjOUatCUsFIAShFqRMFB0tcOEa+NoQkV7f13B7kFAD1wVWwX0b
	 TA70H4Ax4pn/S9KGr6wXXKeCYIKlbQx0JOvz5BNAQxXdakXEP+/Fg/3NNUTHNM0aVk
	 hBWt2m9+tGaiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B7F6C4332F
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 17:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167129708739.1494.10804073539037011446.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01d51f9fb863292a28474c09678a01d7e382c967b9c25c2c343fe31a92b2c9d3
Date: Sat, 17 Dec 2022 17:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671297087
