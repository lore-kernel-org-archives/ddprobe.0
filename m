Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F835C941
	for <ddprobe@lists.linux.dev>; Thu,  9 Mar 2023 21:33:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 112C7C433D2
	for <ddprobe@lists.linux.dev>; Thu,  9 Mar 2023 21:33:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678397586;
	bh=FT/Km+LXXOTROj7uwfra5kA+oi0JSQUubWlMLBuOyyg=;
	h=To:Subject:From:Date:From;
	b=FLrUGHQtkh8NS4okaf3eSCq261gXUeH4gFBmH87MJmuUDLHr9bSVGtQy40kWavlB0
	 GrNQCaPqxL8XkjzphWEw4vwOILojQgIoWmnalYhPw0XOS1N40xvvFm+oYuTcGQ0Jjo
	 kq6vizGqWUubB8FGlGKaTTBkFmvtmpLE2WM8pqxK3Uno+ixfYkXRLqFSYtpMo+n78d
	 zvltEeCeHUJG9nZtOz2Q8JwGG7z+tUYVs3RvQ7YmZdJVP5uqEOGZuRTu2IHJ2ux99u
	 MuR1mdQ0RKwtPSJXjTGg8X3IHl/g5ydNdL27XC5s3fKl42q9DiulNilbbhcF/iqvPq
	 EZnbXUGHPAaQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E5C46C64EC4
	for <ddprobe@lists.linux.dev>; Thu,  9 Mar 2023 21:33:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167839758592.14249.14614346916150965925.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a517ff3be2059c1677edb84e8995dfbbc911ddebf61e403b45b3ec28b846f58
Date: Thu, 09 Mar 2023 21:33:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678397585
