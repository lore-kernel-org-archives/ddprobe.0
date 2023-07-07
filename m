Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65CC4D511
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 17:17:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8DCFC433C8
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 17:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688750228;
	bh=BtbZ9+KTNzxmuIiPs+aTXbOqEboQtuXdWwDZWSp60NY=;
	h=To:Subject:From:Date:From;
	b=hqQQmB20DwgCP5lJ1q7XtseNYh87EKp1p4mYfZmtFhry+z/JehQV+052HCYwtD+nI
	 aF6Ezd9ujqpligXWee5RVsgbfJUAQJebt89UTsQUQ9JRpTi4sTMuZcrtombqVkWkYT
	 MCoJDExUHHeaMYEr0odwWQHNpRCKcqWUShxgs2E89rXRnDyjNRZPnZMgYJhpJWOBzT
	 JBznWDHiNdV74TN0B7fLUmiZf8Ndr57vFBhQ5bKlcHb1WOsViEaQ6AjP/XZKJuHBQH
	 E6tcXvHriWWPvXUOtH0FjU5lWh9foDgAE9W+7lKAm5l/3xD4tWJvrb5pXVrdj+LnHX
	 yAFvH8qFhb4ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9312EB64D9
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 17:17:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168875022874.23788.7747416751093994015.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 163bf8efd419e38fd3a3ef07c185d1bfb828266486ed24658cf6ca93880af6e4
Date: Fri, 07 Jul 2023 17:17:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688750228
