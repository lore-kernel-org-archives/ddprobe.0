Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67DD57F9
	for <ddprobe@lists.linux.dev>; Sun, 30 Jul 2023 04:42:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2DDBC433C7
	for <ddprobe@lists.linux.dev>; Sun, 30 Jul 2023 04:42:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690692128;
	bh=ZwjTXwNIMr0wRZBLReOIiXy3yT97m4JZbHW0FKraoLk=;
	h=To:Subject:From:Date:From;
	b=SWgSBvhNKqA90j7b/4xwS0yIaHHSnwxtHB4o4NB1g+JSZe81jvWLIZBMAGCPB3WUd
	 d9wrFjSq+JktxwZ1+SuA5ZufSNxyDt+4gRGFI7ny1KzKEEXqDgcrHK7yFeW8AJ9Efe
	 EAf6Yhjx+9Y89uCOJN2DiZewsGvpaYmYZl9JrW3ZrL8Vh8u4/s3m3fmFL4uiNWmwA6
	 Z57OVtIJ9xspiJxXLaYArhLOwLhszwI1rH36XZcCPQ/97I2kQZJuwMS5mDCZeDXuJM
	 l0Bry+chDE6ibC1i66SlYoKFP2Nbwu9XWwa/mnwH8HY9K1kWzzgPIBu0ve7jiqHj5h
	 DHV8NXcDBgR6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD286EB64DD
	for <ddprobe@lists.linux.dev>; Sun, 30 Jul 2023 04:42:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169069212866.25587.695633389219618977.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 641272d74b521922c28f0b85fd57aa8158b262317389ab2e489bfe0b33f19092
Date: Sun, 30 Jul 2023 04:42:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690692128
