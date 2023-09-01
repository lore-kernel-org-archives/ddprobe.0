Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B63ACA4D
	for <ddprobe@lists.linux.dev>; Fri,  1 Sep 2023 22:44:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7530C433C7
	for <ddprobe@lists.linux.dev>; Fri,  1 Sep 2023 22:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693608248;
	bh=uTo7v96cSZxOxLHMFfcqRplUsppRsITIZ9xq9ibIcuE=;
	h=To:Subject:From:Date:From;
	b=WxQ2e2dJmZN8/uk+TIO6Pg2qcXtDuFfYr/68qd4nOdEdC71Z5IFspIdQqv6NpJxFu
	 Y7YcC2WmVrHySf0VOTqQa4PU1oquzI9iMc0HKBzxB8MznS7JSuIKAQ/OkAGR+5Msrj
	 N2a5c5ykwxjS5p/Yr6gbtJwVeYlUNv9hV18MqZ2yUQVAgM8w1UNEm9lhW1Bbu6CwCQ
	 bCtJ7YEXemL9jLd+pGVqg5UK8FaJUm5RFQdNAVVQ+Z/ZQi/UFfnSYLaDUM/oiKJp8X
	 Z4FRiqBq7fr1TkKwSwPAvJhC+NcqpHWJsA+CSxbOx1iSLC9AkfsWDhbG6R3xV7Yemg
	 BmhmpiwIjN6lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B48BECA0FE8
	for <ddprobe@lists.linux.dev>; Fri,  1 Sep 2023 22:44:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169360824867.3109.8738324479793197111.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80f276073177d1206b8dcc5b6ffc9498825170f41d8155027a2a65662327b9b1
Date: Fri, 01 Sep 2023 22:44:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693608248
