Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CCC67F8
	for <ddprobe@lists.linux.dev>; Sat, 18 Mar 2023 07:42:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3ED8C433D2
	for <ddprobe@lists.linux.dev>; Sat, 18 Mar 2023 07:42:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679125325;
	bh=FPQmOhf9FYXFgSWkJWwCaFRynac6FxdGCCnHZN/+EJw=;
	h=To:Subject:From:Date:From;
	b=s/Rjl1Uf4xbsOaltYDFU9CfwOqyAw+hGGLegl9pYofdlgz8V4MEzwcDRlzzv14p+4
	 Z5iLzPiyGsNFbNLseXOwHNwLgdtefCzzzfoYdxD1aIQdU+yz8elS8YGKJo93P9wG+Q
	 jVKdP+Ent2Zo4szOhlQQ+D2eZAjUfAj9SweyEuUvfo2YoP5iNXDZd03zOrsVd5afxa
	 1TIxVZEvhchah21hhef5yXz+ZXbh4biDSATUBuYo/O/OSvluIuBiaz6xwKcoO7NlA7
	 pNUo5Qd/+ItecHkMWoRUxvH6KL24kIDadTogEZH/QYqnDJpoAdgVFjm0woYVMnpFX1
	 eA1+EnB4NqeXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6B27C61DA4
	for <ddprobe@lists.linux.dev>; Sat, 18 Mar 2023 07:42:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167912532580.21373.413903629605871975.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 680d35c911f79df492b98919c89d3d5b37eca4363dfbf8b231695ad31f775c2e
Date: Sat, 18 Mar 2023 07:42:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679125325
