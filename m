Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC16610E5
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 02:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 835C4C433EF
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 02:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673057487;
	bh=cydPfVFRBGaMzsXis0HSjy0TnZZlKeEtHHryQlQWONQ=;
	h=To:Subject:From:Date:From;
	b=HJOyjHS9XFRkInbQVIYaLKgRmq1VfGebXKMDnycWMdATzye5lbgayCk/RQHLiGcf7
	 ciavGzdIoBh2axfRi8gc1HMdd+VuaMsiQLTcDbW6E68rFyP0T9dLvIKAtsXg1uiow+
	 0YJK0PcRa2HUrurNJbF9V4CJ5SDsM1dFxCkGBik8GSc329lmJHqB8geNv4cVMmF+nh
	 ES1wltpOGtVBT51arr+CL0hYSicCEtlryEEcIgeQm7LbjtOXWJgNLbtH0E1nmgFNpe
	 t+MfbuvfcVUPp7v1rAIGJ3PERHnf9v11sqmpc25l5zCdwidH5W3bYsWAFsGqLJX1lL
	 JlzS/aWpLX9xA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62FABC54EBD
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 02:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167305748739.29651.4228205479350094392.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bfd3730b712be8fcd4b4385a90bd2d1cbeaa01d4e70d7c66ddfc057354c51986
Date: Sat, 07 Jan 2023 02:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673057487
