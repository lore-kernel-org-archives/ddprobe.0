Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA88D63A
	for <ddprobe@lists.linux.dev>; Mon, 26 Sep 2022 09:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B56BC433D6
	for <ddprobe@lists.linux.dev>; Mon, 26 Sep 2022 09:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664185853;
	bh=YPFXxbzkgcvDXCo7kVwRIJoUFyi9ecobqZxcE2SkSTY=;
	h=To:Subject:From:Date:From;
	b=OaKsgoICV2uwqOZZVUFBul0DLyrq5o38uhQwv/OpeO7YBhiSrLEKbmbjThEAmYTpK
	 8P9cyWMHncMzHlA1IwLzasDzYrhXtIQl0AIxhwS+If7sPMGLtddlPRcTw/E+Dyx3fU
	 RGnpKkFtPslPklupxD+CUfE5zTR9Rut6PBNv25TVidTGps2/EFJwIRKCev3+SXqy3k
	 eDh1yHTCruJholmNgwb3GqoT4KqcnG1YDuQqZBnG90Xrdc/GSuVm8kqcX43WpxHSXa
	 AIR6ScYxhYz0smBZ7IMJqjsb8qzWlgkZ1ikZg6QBL9jMaQIIUc7DvUb+dEQqioLgVl
	 Qnw9Ch4ynRg6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F9D2C32771
	for <ddprobe@lists.linux.dev>; Mon, 26 Sep 2022 09:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166418585331.19879.810367544564509075.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2134ad110f7a60487f2c21eb352b7bfe2b77b35a4edb048de63afa0a4c14b3e
Date: Mon, 26 Sep 2022 09:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664185853
