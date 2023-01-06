Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBD3695C1
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 19:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8D84BC433D2
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 19:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673034087;
	bh=gV1oPyUPxnUGyzW5RjJtMjpZ7e7ww1hhN+ATJ4PmLIk=;
	h=To:Subject:From:Date:From;
	b=JfO/c0V/Xl9E/C90O2+7eazFRFdExmnlULbUWjnVhdcWyyOhjNTZ/UZjjF5LJkYca
	 LqHRveUDBor1K/OeBUsPx9Qw70ke6uESb/SnNAnjGEq9yTqF9sNI72r/tN3jtDeYIZ
	 wWU+S+RGdRVqhXyId+axn6e4SnyCwFbsswP75Ii4+tDwOgEWMeQWJ5UTjqTS19q80v
	 Y8ZJzTUHr1/Mie3FcaH93GO/S/rbjk7aK6myTGkZ9szrZozcIPF998xgbjuSaWUfSu
	 snAFfmlsp12leFYSXMgBDLXAwhwD/zkGIFkIcYX9OIYTVKIroCaxKMsP4RFzuLnRYW
	 N5AZNdiuCE8Vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6CC34C54EBD
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 19:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167303408743.3996.10752444685582736764.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f782e1c688c5a4415fd5314f4ca7a8cfcf5d550b2112dfd8ba2b186f806c504
Date: Fri, 06 Jan 2023 19:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673034087
