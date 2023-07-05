Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5357F134CE
	for <ddprobe@lists.linux.dev>; Wed,  5 Jul 2023 17:57:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C99E4C433C7
	for <ddprobe@lists.linux.dev>; Wed,  5 Jul 2023 17:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688579828;
	bh=eHDIuyIkpNlW74cRapZ4o8G6maF3HRl3CSjkLldadk4=;
	h=To:Subject:From:Date:From;
	b=qdircA/48dHl9NvnUgd39Z70dCVb3UQvfUUES34fHcBqvrmIYYnkOmsTYS7IqRGay
	 sCPmxftVEME47m2Rd/+wVWQSR4S2fcA9wPuvnoB0XKH97r4ugn0QhO3Zh5quWxKgAZ
	 ENqn8yrhtJ/Itl55v/lnv/thdIwo0AVxtcz94tWWvnp04l5FQE2BHcH8rp4OLQS4ON
	 A/xEmRQ1vy13UGhdKU9YQzOqbIIr3tVhTvkKHR5lKcCQzQ4xiFnZKO7FXoC6LGFKor
	 tuWGQ6wmr9t3CFo/qrw0rqbLnute2f7dA6VEIk4/L99nxIP+DkM1AWEkHqIYa542Uk
	 VaPRsQfXnc/gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADF8BEB64DA
	for <ddprobe@lists.linux.dev>; Wed,  5 Jul 2023 17:57:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168857982870.16078.201916500082312079.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed4430e0f1776ea3191be3595f0868676ac19fddadb949854506bcbfd1b173a6
Date: Wed, 05 Jul 2023 17:57:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688579828
