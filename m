Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C67DE8F65
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 17:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76BB9C433C1
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 17:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668791454;
	bh=6CCnuB/gmRhKLQnnpRQJ1ZPwHR+cVqo3koBTPj495x0=;
	h=To:Subject:From:Date:From;
	b=Ox4cxX/knV/q+yQDE0ugHfLr33V1O2nPsdjYWG9kYMOaRE1jzL8K5QvQs/FnVzRy+
	 V+TuLO6f1mSabZz3vNjl98R6sagxDzd0UCo3Xk0W+JEnnp22reUWG2JEpNL8cbuf1Q
	 nDkL//m4WFpT/+NwHpaxEHggEByZwWGk2HEh74ucM1rMb3c/HET/dX7uQiK7At93Uq
	 jeWAKNC6hyxQHicSuk98T0rupX4pKLw8Z3OIXWL0NTD+SImc84oyYlWjTW5g37gIXc
	 u1fz/8eEloufWxknXFFdc4XAYtwFc07GkcsRWev+ZLu4hOFZOJb9MHPZYRXrvMmhtN
	 0izF0q7kXJW3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58754C4332F
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 17:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166879145435.26709.13645927303359607122.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b93e4dcd91452ea394f3908470dd7c96a4746a10f19ddb57ce4f92c77fa3333e
Date: Fri, 18 Nov 2022 17:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668791454
