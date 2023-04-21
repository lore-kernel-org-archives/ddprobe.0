Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D7733C05
	for <ddprobe@lists.linux.dev>; Fri, 21 Apr 2023 13:29:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA5ACC433D2
	for <ddprobe@lists.linux.dev>; Fri, 21 Apr 2023 13:29:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682083745;
	bh=UJhq4az/Ztb9HK0CXGpQkfvuziOlimdQ0inV7H7E5P8=;
	h=To:Subject:From:Date:From;
	b=H8m5JZtjMrfVFSXO1O9ecGeZdmJOPjn9TaKuVeF0f8Wrw3PYzVrgLmLd83nRE8HdX
	 6fCwgcE7h8BYPvzQ4tB/1ZEfJPLyhfkmH9lFc2kNO1dLaGz6NhbOwmZk17NNtuv6Ne
	 il7yY5Qt1pJfUINxYAPl75SQkeRjJ4XC5WIdhGq9gqMqmD66sGh1ex0oHsp0UHrNpS
	 j3XUYKBPH9qEtuUQADVFtoJE1tgPlQ9Q7blaCmzN3P3wJh+FETZIP4xS/Xy22tFAvO
	 ioCHfvuP9rKbpL2WUPl4ViHD58t4abbw7CTwTQ7uiFY+W6u8mdfRBVRbJ3zFT3ADxV
	 m8+WCnkR57sEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB610C77B75
	for <ddprobe@lists.linux.dev>; Fri, 21 Apr 2023 13:29:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168208374575.28975.15093915263771050507.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8859eee0300a97dfb8539ba25bc23aac1233b42ee14227609e06df296f086768
Date: Fri, 21 Apr 2023 13:29:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682083745
