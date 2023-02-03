Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E31329A2
	for <ddprobe@lists.linux.dev>; Fri,  3 Feb 2023 11:56:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFB45C433D2
	for <ddprobe@lists.linux.dev>; Fri,  3 Feb 2023 11:56:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675425365;
	bh=s/oyBKRsbcu7+nsOZ/VZeePPMx+1IzEf8MJJCByvZ5c=;
	h=To:Subject:From:Date:From;
	b=JSPHUJ9fq8f93qmaKnzLCJbC6eZadCFlhTvewDfd//ApxH40a7qSTffy/J8QerCXR
	 ewBQk9SrAG3W0XcJMikzuYU29JsTu9CgOuomx7VD9OD41+kAfrHSxAQVM86cJHt1mA
	 ex+/h06gg+KuifkcCxi4/tITR9OD/4Lx/udYgfaRoqA7AVEd2Tnw5SB9fRye5x0SJl
	 XsVxIKfLoHwyYNRYVjqDpTBWRquGU88/phQhLhBj2UlhcjH4VUSlIDo5rthpxyMR7P
	 DC6d7u/jEAgoSSPDA2R4/vHgfDTF5GsMF+aH8chixjDMLcXID2ydpmAu+42iN1fUzU
	 Xroocdy8giiZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5027C61DA4
	for <ddprobe@lists.linux.dev>; Fri,  3 Feb 2023 11:56:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167542536573.20193.4547838510670583312.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9cc0dd4e957d0393831eefe3730b6c1b58c78f4d675c2ab8c60e67f7dfc6ac6
Date: Fri, 03 Feb 2023 11:56:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675425365
