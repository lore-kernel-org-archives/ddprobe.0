Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C57E28BE1
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 22:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79203C43470
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 22:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667946054;
	bh=U9LxAfQQc/h9B5AC+qxUm7218rjgby5n5VZqwmkPSYE=;
	h=To:Subject:From:Date:From;
	b=ioEU3tdWtIycX0KRQnEMz2fG0nbcIO3+frwYlmXfUhXJ5hLAdPTTUr1bCCVXPZ5PA
	 NP5IQPupfzkTu648ebPFFSZ38fb+hwza+K3eKaBV+xqNkZWLyDYuKfgACN0dcw51hy
	 irWaTfi1Ktc65R0ULJ5CfHcZnhyOLIx2PBRErxTP99kJpFklmi3yD+XEyy3ZXXLdE/
	 7m2R0IrIhhWV7ApETKyZ5cNmvvC8BYBAbQ3GbEFt7nJh0g5dTkUAy92jISVJMIeWeR
	 ARAIqMCHN/pAR2JQd1yQhtt1A/5SRaVdqk7OfOSXzQJ9aUXfE8LGV8VeMttOAv9s9f
	 o2Obj5mAPqhFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E40DC4332F
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 22:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166794605436.8197.3113052211327229784.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8e641919207f8f3f420d8a4ae309191fc1a77f6a27edcda1929e57bcf58482a
Date: Tue, 08 Nov 2022 22:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667946054
