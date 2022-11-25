Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9ABE17C6
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 06:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C635C433D6
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 06:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669357254;
	bh=sO8yAYBxUgn9yfiV5zrVaaPrICEKFjTUkYT0aTYptV8=;
	h=To:Subject:From:Date:From;
	b=UcbLykhi0ak4A0QuCUe5YD4GTpUkEIYLcRgNr0OuvnLvKWkENoo9DKjZmU+DZ6y4D
	 cbjxMUeDCHvfNqRx8ulBBdWTthxcN1mOUU6t3BGTk1353rIjTv5uxD2W/0jdo+LI22
	 IZM7xM4Rr2F0yBj24ZR32LXXnWyFaDj92vf9j3RzkMWRHhUV6nX0QDemdnpvdOdUHD
	 LOcxUak9F1/OKbeAFEkOCtNOLrKRzdKJkWA7a/3KAJVGH4tVxT6kDld6640cq0/trY
	 lqqvCJOKfH3UGlyOiyDIjwQMyT9QCu0k9QT2NojU/Dx9dkdmk+/NXZtHW1VjkL9oXr
	 K9JzZdN7T9iFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57DACC433FE
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 06:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166935725435.12235.16735601986959731780.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60c13e3d8cb5d821e1b731a1ae83d95769ef50dab89bfcf076af1233a544409c
Date: Fri, 25 Nov 2022 06:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669357254
