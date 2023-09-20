Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71B9A41A80
	for <ddprobe@lists.linux.dev>; Wed, 20 Sep 2023 21:15:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCBEBC433C7
	for <ddprobe@lists.linux.dev>; Wed, 20 Sep 2023 21:15:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695244508;
	bh=iu2hdRE7FOiGouxM4eo82ADYW1lVBgZuOPKqtKoRRx8=;
	h=To:Subject:From:Date:From;
	b=gwW1yWUnqQAByh9J3Xd0OFRj09YZNakijdbSWuhBJm9gA2kMwQzWqygRj81dquJwu
	 9OU4WyvRXmJTtPyYdAC4hca6Lv/g6egaHefsLyPzL/FBpHv5RCOWpdNrhMKon+n9Dk
	 yjYB1NaqfGD4L9kL5i3zX8imQIv1nvma+T1IVlO1reYdwXPHdVb4PXrA9paLi3QAv3
	 5oWb23DF2+Yx8ECMj9UVOgbRYocHuqOWlFVFK7NTl5I6LN7SvyptviN8XBd3S/B/rp
	 iCIVnmTJB+4bJ0kkrjEl/uij7Nlsr+qTZWt+5tgALv9GlrhG2Jg8jwuGaXQvTRgT0X
	 gefXyCPu42bGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4BBDC05024
	for <ddprobe@lists.linux.dev>; Wed, 20 Sep 2023 21:15:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169524450866.27428.39198458396428157.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2485442488a37de1c39364ef53fc4faf77e4ea991f197f82ca807b2080bca082
Date: Wed, 20 Sep 2023 21:15:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695244508
