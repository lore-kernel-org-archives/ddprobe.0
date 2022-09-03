Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4A221C31
	for <ddprobe@lists.linux.dev>; Sat,  3 Sep 2022 14:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D6CDC433C1
	for <ddprobe@lists.linux.dev>; Sat,  3 Sep 2022 14:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662214253;
	bh=lv+qfkoY1ABLu3/4Z+D+dSroqNi9Jh/IU/VcXF0+gLY=;
	h=To:Subject:From:Date:From;
	b=vOWBS+936uO6JVDeOfrOlwkVqe6aJ2RB9g0JBUn0pNIWkPM2fJKkqS11PsbGiWZCW
	 1n1Jl/vA31akfumVu5Vj3YCBzMgpgEA3rSk4mWw9F0/OOjPHqRoVmp4vxeqlv7Y7tn
	 GUuAhWvFZrCigMc/DkRD23f2i2krb3w+854A4qFq3x367Lwb4//znIDtp89YCVpDU3
	 9bBzBVg0hFKyAXJJui8XbvT4zU8CWQgVc+6EzIr/Ni2fwBUDY0RNT1SaRMYo9xQBnS
	 2iOx9FaGt1Hb4vhC/VPENOYN2CmyLzmDxpJR+Wbod/YPKnyirjnx4UxzJoR5li+MxT
	 6IHqNDhdoXZgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55798C38145
	for <ddprobe@lists.linux.dev>; Sat,  3 Sep 2022 14:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166221425332.12758.5828688258993750772.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e54f90cfc43ff6f4f45dcaca4b45ba231648652d7e040b67a31f7a1175d33a9
Date: Sat, 03 Sep 2022 14:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662214253
