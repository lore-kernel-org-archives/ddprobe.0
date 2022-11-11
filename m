Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5E2F24F4F
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 18:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72C64C4347C
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 18:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668189654;
	bh=OufmglfS9ckVXY2ZvFEbRRq9M+3o3wkmERoeGKc1mZI=;
	h=To:Subject:From:Date:From;
	b=GJjmvAd1aa6iJFh0Hs+ODt0ykfsEkXB7cKz67ybXmMuS8REy7B80ogBVO9b8/xKzH
	 U3M7NHKNKzyD/mdHAFHKxfrsdfOIJv2PrQxfZ54giZL7/WXrRTYecvGyX744QtuqLT
	 sHbC33uWXjX71FuaZBH4ptPqYuN2MSgQ9JtUfJTS8O0Y+YQXA2C6Ojrb6LHwdjZIYf
	 0LIGor2OqTebjIzNbhuAzNz7K/gb/w0qG/GCYFSMQwJKNfhTIG9tHF7M7TryGZULA+
	 phfID1Ebxt6g+abBVbzNnNtJkxwSkCjtkO8vIWjf0TdfKHBdh5rKvXW+k17bogX9IH
	 DBxZpib3Nf38Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54E6EC433FE
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 18:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166818965433.27284.7674275614681971275.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efcbceda7b104815037ee07c7da5f9c80571ce2e4bef009072dd618ed1a8d126
Date: Fri, 11 Nov 2022 18:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668189654
