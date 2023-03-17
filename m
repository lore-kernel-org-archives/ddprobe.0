Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 307126AAD
	for <ddprobe@lists.linux.dev>; Fri, 17 Mar 2023 13:31:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCA37C433D2
	for <ddprobe@lists.linux.dev>; Fri, 17 Mar 2023 13:31:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679059865;
	bh=dBVGpLy+DyqzgI2jhmnIm/w7kIrRfKDH3nM5kLUSMzY=;
	h=To:Subject:From:Date:From;
	b=YP6xIBg5Im+0jPZQbiDn72gJw7zBEr6JunBKm+EiMHna6xVQ74XHgd/JFixVO/6ra
	 2QbOLnIKhCeZYd235GHGNXBFa+0jEKOOzyN9CSB0JZoEnJNYbyvwkKBjOvKHBHrJRy
	 Ixu6jHdtkQMAvk85en9N0vgpljIAWehK6Hx8tMlB50yu+48MUzOJvKP34Vk9ZN37JS
	 9vExezUe1iCeedYAYq168bbYDf8ljPvPatojOWlrX5s8h9nFLaglpJPuXy4tergNj8
	 N+zNoicr0VxM/7LpfBXhY7cxuVEd7gyjRJj9uT6tzekUKsui/S/idgmWBBDKPzS6Jm
	 +XHg2tMx/MjDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5137C6FD1D
	for <ddprobe@lists.linux.dev>; Fri, 17 Mar 2023 13:31:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167905986579.4623.1665469276445998976.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32f185d6b84a54b3f8044c97b714550ebbadd639907f92c40bbdbbcff87dd8ca
Date: Fri, 17 Mar 2023 13:31:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679059865
