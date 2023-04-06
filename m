Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 401C5A21
	for <ddprobe@lists.linux.dev>; Thu,  6 Apr 2023 03:57:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8E64C433EF
	for <ddprobe@lists.linux.dev>; Thu,  6 Apr 2023 03:57:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680753425;
	bh=v4OQ8ZSOLDw9Ao1P/dMmnMI+pcnePt1/Q1PQ6hib/R4=;
	h=To:Subject:From:Date:From;
	b=k7nr2UeKauFm4ZawYOTTOX2W0ESOsFBbqC5C0LpCEXG8RJU6DNAR9P5zgydT7bMle
	 JXSSAYdovZ4rqM7aSM3/QxQansAe6sAhAX1vu2YlQQtCmWBqyaoMpCOZrLyEWUoK/2
	 8sn8oWErnRKEwNkeKbfJNKfFU40i4aCU9MAkVqpZ9tVKoZ67l5NEv9PPQjTx7fr5F2
	 60Y7h4DsQ4bfkAL+S5bsaZwkFdFn4dIJ7dc29QAvQKTaDafURC0/SlPQ3pYPG+xg8x
	 6lpxnI/DN2w9N1B5mBoLsp/tB3NyU7l0hCA7XQw/s/K36klZ9/ntHIYZoxRCOlplWb
	 9751YGb5lUisw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9F39C7618D
	for <ddprobe@lists.linux.dev>; Thu,  6 Apr 2023 03:57:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168075342581.18398.12829249429013127849.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aaa20c7d2d9a870a72fd6ddd39d69efdabebd444c24102580d7f19f8d8ed5965
Date: Thu, 06 Apr 2023 03:57:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680753425
