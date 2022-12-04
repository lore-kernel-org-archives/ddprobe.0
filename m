Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5AA73C3F
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 17:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70D77C433D6
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 17:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670176254;
	bh=S/+INl3oVxd/X3bwGkYX6Ciz4MPBA+nNrYpWY4rqzgQ=;
	h=To:Subject:From:Date:From;
	b=GvtlqTn1HPmuXIToLri7B8u3BzK/pcuc6jdjLRkVaiVjGIGZ1zQU5W2vjRkbWksIN
	 eku5IL7Ww8qRDSwR6VcFD9WGoTVYeZkeMoKExNE4nJS4ugfNxLwdfBdmjWthb0TfvD
	 7M1GMyiDtJ76snNd9zJlOHh7sNTDYgAInaB6QgOyNY2IWZDJQlGQG6Yzky2remcY1N
	 Iq/4QnxDua21p5e7VdMKGCszplGq2T2HiU7DEi/XjIF7yGwb0XJNh9KM7qB8IcWWDA
	 E4GpR06aXXGbn4TKrT87kzDElR4rqd8/ODEXs2Zz1clZntiko1pcud86bW7TJOpXx4
	 fQbQOJNTkyqxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53866C4321E
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 17:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167017625433.3490.16720718124530837044.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 487ec944a2be13b8129524addaac490fda585bddee74f953b517f851adc167af
Date: Sun, 04 Dec 2022 17:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670176254
