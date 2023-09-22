Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B4EBEAC7
	for <ddprobe@lists.linux.dev>; Fri, 22 Sep 2023 10:05:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6FA5C433C7
	for <ddprobe@lists.linux.dev>; Fri, 22 Sep 2023 10:05:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695377108;
	bh=GB91PzR9WBgpJtGqDcP99K/SpQI6mMJOz2VhZYuMWck=;
	h=To:Subject:From:Date:From;
	b=i7CN6/3EFPNw8I7aVwt29wE0J+WCntcJ4gm7OATONnAaSt1gAGPpDXRzmdHFZEb6W
	 FXi0fzFNzNqPDNCGnvKSSc7kgirsPFIGhhkvMrsHloMDybsoJv9qEAfUuZwqwAujeR
	 extNg4Q60xhtRpOde5RK6ek2rhjeAKRjNZ2WPSMzmz3dg44tZ0EUpIKzfIf1YpWTVb
	 7mmC1OM8JQix7pELSwTt/pLvYR53+s0bbsFGYoc9twDiQNhFQW4xrsVXOvt47qEd2H
	 cPvFae903RriNwKWgN9b4FvtD9s0b54jhJD+Ue73eLoJiualjkuihRhsa4u/DYf6i7
	 GJ+AbVL9IYQWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8A82CD4F4A
	for <ddprobe@lists.linux.dev>; Fri, 22 Sep 2023 10:05:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169537710868.16902.18281310911607259268.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b18e0e281486aaae042a79eab644bf86b04860a631b6b2d09269377217a7666a
Date: Fri, 22 Sep 2023 10:05:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695377108
