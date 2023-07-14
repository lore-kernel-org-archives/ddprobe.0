Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 607F320F96
	for <ddprobe@lists.linux.dev>; Fri, 14 Jul 2023 20:21:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D01A1C433C7
	for <ddprobe@lists.linux.dev>; Fri, 14 Jul 2023 20:21:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689366068;
	bh=LD9l2KMQRr5kFHT4ca4ZTIJyjzvrH3LE4iAQMvG+dMg=;
	h=To:Subject:From:Date:From;
	b=AXJCAf5WySc/8hQJImCfz6Lg3IU1fyB7fBfTey7K8Agq8sEDvtDfvWqZHoXAmrVP1
	 RaAnardAEF4Oa3lTWretqffXFmNrt5DemVHMfboJfiVPzOFBVz3t1jG4FrjS4ebUfS
	 Rj7F6mlIh2mV7Sy9sMH8wMINX3q21y1uOUuW5ZJXoKmJvuMbCl65EG1gYm1XzKqTNi
	 77ycA01qwK+Z8KejL8xNtrqPjx4VTplTJNuXZQZugJJDZ8BiFkYjqX9OMALiNAogZA
	 Q5LeL23fn50XypX3xg6oEm4yxQSI3l92OPlCSOulUjgzlScr8pqI7el9F3AOLmJ7Q+
	 EUfoMQQ8nfMjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC62FC001B0
	for <ddprobe@lists.linux.dev>; Fri, 14 Jul 2023 20:21:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168936606869.602.3591607848906298036.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8b4c72ff8b2c0d82456eec1e5dd1c1fd8abb103c3e8d0955a4466e3dc0cd98c
Date: Fri, 14 Jul 2023 20:21:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689366068
