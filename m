Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C04EB2561
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 11:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6BCCEC433D6
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 11:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668684654;
	bh=2gjgN6jv3gkPCsxBM52oifECdNKyywsE+mzT52+Y4DI=;
	h=To:Subject:From:Date:From;
	b=opCAPCxY8ktV6krpxz0p+tUg18DXVoIDvTM9EQhZcI05/MwWOcqnHqSEBhF5JFStb
	 LJY5ivNcIqCjkLvr++DBu6W5v65ZikUYY7PhVJwqWN24FOkWHLT9GzgagC2QFQ2LH8
	 yJt6EhMYFIHk1md3Wg1dm/4n4aS+zU1BSRlFcZu584sf5qATzGMNEBOqBs8+uowtll
	 UAE00/9vbC7d4xppoOkDpiXbhrZYuwdEwDSrR3yQnuUc+mLE1ECZfffTy3eB6cbu5D
	 ElA6fyTpsbou5hOdf19isagdAYyKAz3iKN+tP9YjrptHJAcQfyUNzjof01dQrTY0ut
	 fhK+lZa2BnMzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51CF2C4332F
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 11:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166868465432.949.757755857321452418.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c2c959221264ac5f5298424475bd1532040c4563f650bba49ea9506c692a0a5
Date: Thu, 17 Nov 2022 11:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668684654
