Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C07877E5
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 22:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 66A2BC433C1
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 22:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668378654;
	bh=c53yuWg+sZwehJKuq3vFqOcToZ8Eo7mS0FBZXt+PRKY=;
	h=To:Subject:From:Date:From;
	b=RELLEpS9ct0/pMxLSPm5FrDY1rQ9aMFi54nIPjfAYJGNBhKVityOhgjH6BHP0blBB
	 wmsgGolI9wovuSFrW9DVq0PGAZV5NADyzSlKRafvKsZVaHrQxj2vMYEYp/Hk4q7SVw
	 7+cgU3E2EQCHMvE+dHYxbzKgs6IYIFBQiu4UIvX//LDi52vfaXrqfTE6wuAy6fd7xb
	 AqmRhx9jvA0iPZH31W90PtppUl5r4XEQYt7tQ37U7OLT/M9mDR/ZKxfGjvhKwXPL/v
	 P7BAtpbbWKlBGdepPQp1I8o2kJ/AtBy7AKkF3onAP6t9UOUQN4bq/w3HvnwQLeGUIp
	 9HcC8BnBuEoAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5009FC433FE
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 22:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166837865432.15354.17108622649009619757.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b9962437378cdf7408cfe6ce618ce25ba2b3e3fbabb6fe454bea6ad5abfefd3
Date: Sun, 13 Nov 2022 22:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668378654
