Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4FCA184C
	for <ddprobe@lists.linux.dev>; Sat,  3 Sep 2022 03:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77669C433D6
	for <ddprobe@lists.linux.dev>; Sat,  3 Sep 2022 03:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662175853;
	bh=hQPJTYwvjWc+QXvsiK/AX+W3KXM8AeZhPQYlW8xxwEg=;
	h=To:Subject:From:Date:From;
	b=VGWEgPKy7jmbu276LpArOhJZPzjVB8FiChkJLXOURJmwiVk6SIwazPnvB0sE/GIyU
	 mGsO0QvT9u3i0wUv75PiAmVouqNVu2Eu4f4i0AZeK/j0quH3DKsr7FThvEtzsOSIi/
	 czFSI2qPyoAzG2S8r44Y0Qkcbs+249blFMLRS7ODrt0xn5TfPjLoWe1229MsbG7q1M
	 7BOt90+VBG23w1yCJIUqsdudcHC8EEoH27zpHxCOLdRPDJJNJFGvzFbZl3MBgbenzB
	 QsbaWSSsm7zWviR8YYqf/v3yr2OcylSWRnAGcIYNoICndd/EFy4pjiR54o+i6Jaje1
	 KvYveRggtrjdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5866BC38145
	for <ddprobe@lists.linux.dev>; Sat,  3 Sep 2022 03:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166217585333.21578.9831431557499640476.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb83ee2b89844097f336d2e72867e872c7cff07c5e528e80f126b630a2a7903b
Date: Sat, 03 Sep 2022 03:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662175853
