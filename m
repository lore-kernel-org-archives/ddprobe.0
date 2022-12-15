Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A9FA6AA6
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 21:31:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9DD8C433EF
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 21:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671139887;
	bh=tmgutwLCeuwhrZouoTOPErm4l/WcPADIazIhZyCPHtI=;
	h=To:Subject:From:Date:From;
	b=WNlGggr6+dtt/m7EXYMuKvfGMs6W5o/p6FVer5zJsCNRgd2Wip/XbYS4XJMKltzgN
	 NVJ8LFCVqGuCk0GSN7AHA0lsRoNG8uM6tDEF93kG1iLWrMVSalBn20W91at9iJBYsF
	 tgVHmgq2MuLJqeewWyfQ2GFuESZu+rXMHpJDRIZro2qku+GvBm8eSbewGk2dhJifJO
	 IZGLynnIYlRjy9x0AqQjWtD41K0MN29wPJia4m7sB6tsT/cpbyK4C8HsMQpxgkv7I4
	 WN9T4+XTQ0HXfzwT7f6twbnmmJl5UrUZVZTuUUWq0y3Ob+f1NcTgb0R+bt4vg1eUDb
	 R0FK71mx6yzyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD81DC4332F
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 21:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167113988770.2104.9397655573719405749.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6a2ce149b07fa11f1000358cfafc0c410f228f16e5a1b7fe427acf48c6dbcaa
Date: Thu, 15 Dec 2022 21:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671139887
