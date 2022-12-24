Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EADAF2109
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 22:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9300AC433D2
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 22:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671922287;
	bh=2X+uK7tkDq0vfdOzWLf2k15zjod3bS7QcSZWTaw/cpc=;
	h=To:Subject:From:Date:From;
	b=OH7NbsPpfAbMB5aIXeIT1z8+d3tmYbtfeW6tCgZYkka5nqeTQHWYt7IEzOTBpBrkV
	 Cr+J0zSqNROPu6/ivOCmAQsrRh5WQKpEI697l6OX75dz6VoUf3drJ3ZJiK7sXd1J4N
	 eNtUx9AGb5OejCDvOlypsVlJ+KbrDSIeo65ZERSc/Vlxo7wnb8eOuucbjPIG2b5n9I
	 Nyt8zh3OwhGEd6VF9L4rfrTqeLi2iCh7S1C3BvBHQshEi8JChf16o5JNDI2q5XUwV9
	 i4MbCQlckGfGnBqTIOEyNP066XedsuxyXKJXIsMQGoI3n2nzUUgU7bJXqrdpkJ5LKm
	 gEJl7hryQzxaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 654F7C4332F
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 22:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167192228738.26348.1491343482125365058.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5a2734d2b5da965b84bdde052a1a93112585f4ff45efecb6f04d290983ba109
Date: Sat, 24 Dec 2022 22:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671922287
