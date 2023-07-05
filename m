Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52C9B53BA
	for <ddprobe@lists.linux.dev>; Wed,  5 Jul 2023 11:27:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEA1CC433C7
	for <ddprobe@lists.linux.dev>; Wed,  5 Jul 2023 11:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688556428;
	bh=iBKbx5zP2vuxS47Duxz1plS3JlYjzBfTrhgomNroxCg=;
	h=To:Subject:From:Date:From;
	b=eaUw5FEi0YFCILTG2omz5/Db8RTEE6cu0FfF/Kbzs3qLLSbN7afd+6k5q4GJ6Yzxt
	 kaoDgXQH86lsYOpO1OkymFcTRYoEWyNOOv7SGM9R/6sW7FOj5pw5xr7vVSfrjBSZBW
	 nzxxU4OwzmZvjeTiz/n/dQSWrp6RSWKKK3yl6gsxH9anYf5ghoPBg9iLf+H++O34ci
	 oNlzgjIJkK9cepD1YUSdJv0yq0uE0VLJ11cTLsDVqzzQdMj0+VVnOgxiZLfalqbDoU
	 K14xvaunVU9KS/0Z1qVsJ35LGK8mdarNRS8n6rMfjpNdkSctq9iUhu6uHXb/HbjLm3
	 yTXupPt8zZSEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3629EB64DD
	for <ddprobe@lists.linux.dev>; Wed,  5 Jul 2023 11:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168855642872.8663.12090236533527059590.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c38ac48ffc202d10cf5b438a0ce919f8e36ef4f50311fef29002d8fa246ee4ea
Date: Wed, 05 Jul 2023 11:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688556428
