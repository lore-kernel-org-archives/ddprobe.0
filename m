Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC2102F43
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 23:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7533CC433EF
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 23:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671405687;
	bh=mpRNeQmtXBnJN22TMhTh8AsPWwSpye5G2NtWhs/eAdw=;
	h=To:Subject:From:Date:From;
	b=ODJjXwaqAaQt2gXP6f8CVBYkGF4vib/EenkVEeviPe8AZd6tq9KXf22bviof9jO2E
	 TquxWPqZWO9k23T4QSPKPEesYZtQmDImrqUqXlAC8mhde3uk8G0KxH+zg8MKyFeQVo
	 +5K+yWTFfEsQKgEGFRlJ3GMzlR53y+aFtwBpdxCAUGem1w9W9nU/J0rIRUYYFwHE5a
	 zxdCooagpUMW5DGyLgGxmfXNd2PsXcGQ9lBi46Ejr26Ai8P2rS+qnRRy8B/qBWRhT8
	 PIqP5tPp6mH5uB0zia8uBzQw4DYFfRRHlXCoQ1yJIQqLE/d0G10zoY0yDStO8ckXmt
	 RMVEPadEeXoNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F7CBC4332F
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 23:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167140568738.7510.2948266959242769985.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efa70ccee4158a6cffaef7b230ea9795ba0a059b2bfa96c61a402deb1a7ed72c
Date: Sun, 18 Dec 2022 23:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671405687
