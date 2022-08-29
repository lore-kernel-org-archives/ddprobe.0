Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D167F7C
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 11:10:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D56DC433C1
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 11:10:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661771452;
	bh=JHD0XVY1+R1oUKQwdT0jCou76TZaazkvulDxwhjOptk=;
	h=To:Subject:From:Date:From;
	b=U1H9sI2zprgLXXngo0qwY7Tzv4LzdClURapL+vzJgOHrUxbavMzrMUohpVfICvfhQ
	 /3ag5u1S7y8xf9lngF/+q9PM1VSlV0Mq5uuUBgGkAdAo9MI0lkrcUvbvvM2hQdMUil
	 EIqy5Mu5gQCzhutF8UBOLxiHYwkZZCMFfDep2lGhGslhsca1dsUsBaSyLmlj8v+Pd9
	 7FmKIRn37l4vXH3+YRdlJpEZIVy3PkFq0kp3M1SEFzuRJ8l7znm+XzuAoF2gFQTBOa
	 Iyl1W9p8ZN5vDgeLElR6zH9/kxMMtfGEwneVln2fEKckrLFbd+uIWcsz4EWYJ/BfOE
	 2xmYviTuPIXaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 656FEECAAD5
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 11:10:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166177145240.15213.17968835215299819414.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2dd007234a9eee1ad4fc2492dfd2bd5bc47be745deea6863bae145f2805bf40a
Date: Mon, 29 Aug 2022 11:10:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661771452
