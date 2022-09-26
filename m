Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC80D7E
	for <ddprobe@lists.linux.dev>; Mon, 26 Sep 2022 02:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 689F7C433D6
	for <ddprobe@lists.linux.dev>; Mon, 26 Sep 2022 02:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664160653;
	bh=tUpQsMys6b2JK11s5Qb/skvUgrXjaaZE3566SNWHUpk=;
	h=To:Subject:From:Date:From;
	b=CPkYZhfbLb/5YdPSp00Q0JSIMZ6KeBJveeNtI9YK4UBCil2sJXtJnb2jSlKrsuKmW
	 MZ1Y1ATNBGF5w18cwW3jR7z0gMwFNzbDTwVornVBVfZtFvVW+OHWfERWP7e4v1t6ps
	 5EuhAyHa8dFdWINrq2uWvxWF62z0ZUUcq4hz0Cd8y60gZCgU49Pv6WDmC+I9z+PrsL
	 EZTBs511fiqu+bAzpfblCxi+uxOl2O5LY6vb9OqoERzZjGDX6Pn7jqsW6XmaI+v10q
	 ztUPnr70Z09dUOYOIWhlxqR1/8ZVE7vIFFS0v9xcC273C5VurkojQTJYtjeK+NtLnf
	 hK0ENgrC2ssMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 521FCC04A95
	for <ddprobe@lists.linux.dev>; Mon, 26 Sep 2022 02:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166416065332.30187.13513790779690722116.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe2ced1f12fdb8941f4fbc6e10b7821fc227c1d936be8168fae5706970fff71e
Date: Mon, 26 Sep 2022 02:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664160653
