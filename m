Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63783468C
	for <ddprobe@lists.linux.dev>; Fri, 18 Aug 2023 20:44:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1C44C433C7
	for <ddprobe@lists.linux.dev>; Fri, 18 Aug 2023 20:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692391448;
	bh=3a9yFUlA7lvG8aA0Ptz2bfZ0rUEmWzi8xUoLHXDQGHs=;
	h=To:Subject:From:Date:From;
	b=NVFKdW13yLxFs5ViRNvQI85yf14pJqn98TWyEQ7qUmUvf4zDi4VkIDyjLlbrXAREE
	 sZRElHmCv+0q7P8JeNGUcl8PJOx4crIh3J2k7VZL/ztDyQWlhGj51zVtu9mwHfWcO9
	 CnG67hwlLa0qxdRgt3RYo2H+2USPZTwK8/zlO8ZlQM2uG707HtCVUObYhzK/MJT9z4
	 3KFbU4MLib19h4A4DaN/qLPTdetGFkd7z+T8v4EUYhBgpD16751QhMxkxzbx20ELvK
	 yUJQYLqzBeXZVstVUEI2HSecdgcc/JiMINmz5DEXupNIeujv6J7xw4wSYDSeGs3cme
	 0qd7I/OUsb0Xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A80EAEE498E
	for <ddprobe@lists.linux.dev>; Fri, 18 Aug 2023 20:44:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169239144867.3162.14937221538968351985.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 685e6014424854c71ed6f52947452680bb86fed1ae083d725e85b58919e53d04
Date: Fri, 18 Aug 2023 20:44:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692391448
