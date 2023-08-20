Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9BD5210F1
	for <ddprobe@lists.linux.dev>; Sun, 20 Aug 2023 09:04:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB591C433C8
	for <ddprobe@lists.linux.dev>; Sun, 20 Aug 2023 09:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692522248;
	bh=liXLkAB3nGgLrnTZ6fHv7VxtJfL3qs+LGsRi+MjrltI=;
	h=To:Subject:From:Date:From;
	b=TmluoTcr8skS1JWiVLcUsci1iMwO2HfllMA7Oo+R4imo4KeIMG6uf/ofxrga2L2hH
	 7z+R9IwBeOxXWHZQ+YGSD5jqMYwlTN20fo+jnUf2maiDvAc6GK0GyLFBkCpZdyI/am
	 RAfw96b6nbTXr7BQLy/2YVTNKc1YwRS5vLvLihX4FUDFNT+DLzq3m1xDocKpiyezfc
	 pEEs8pU18y7kq54wFk+t6RusKAYZ0DLjkxJt0f+l4HTMWpprBjyHgimgt9jNCmwRy5
	 Lz0EvDke6cEwoH/sk5xUYqzjQZAkWvlKmsVpdglfRw++LcRF0v7MGRCOM1RlRmt9Dk
	 NK9e9L8ZqwbRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBA20EE49A4
	for <ddprobe@lists.linux.dev>; Sun, 20 Aug 2023 09:04:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169252224873.18948.12644892039188573515.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28eab56b1c60f5ecfed6b5bffa4ec6838ace701b0487e0fce66f5bad7ca343b6
Date: Sun, 20 Aug 2023 09:04:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692522248
