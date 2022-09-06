Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0FCD7E
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 17:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FFE8C433D6
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 17:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662483653;
	bh=NGhPThsBBzTzaiCvZyxu0xE7/0N5dmrsZDssSkSgeow=;
	h=To:Subject:From:Date:From;
	b=tuEufQf5HZtCTXwWrtbYpJUNujghgiuJ/ABKnljOe+DjYi5WxqZe3GmHI2BOwXJF5
	 8p8gxe3XvzMEG1vAbdA0aejvJPkNdymWthQEdpQNQ0W394xd4kwHHAD3Ybvas1pNjz
	 AwP7gD56FxIQeusJk/V7AiPp1VfTge8oiCwhhthirZ21fB/ED5kZa/W6S6O3RFpgLn
	 DNvYPky8rlNsZk9zXo12TlKf+tELY+vSk2dOo0cGRIh2p3M/t/OpQM0MU/RaZ+Y+Rb
	 fY0zNezcdcT3ut2qDIXdsLhuyR0vx1CiZsfzdYGLxIs40cVLTbD95IF0NuXo1EAuAz
	 yihQRCyAJ1VMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52092ECAAD5
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 17:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166248365332.3168.10405441556002343012.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5916b967d1954f41458b07b41db58283946b8b945614229b14f6c7269d99d3df
Date: Tue, 06 Sep 2022 17:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662483653
