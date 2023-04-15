Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36BE8A29
	for <ddprobe@lists.linux.dev>; Sat, 15 Apr 2023 05:33:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3B98C433D2
	for <ddprobe@lists.linux.dev>; Sat, 15 Apr 2023 05:33:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681536785;
	bh=vfQY4P8V4CMoFW4LfkYwf7ODppnRnNZpFZgz3Wsb+cs=;
	h=To:Subject:From:Date:From;
	b=oIFUXok/X34AEQ5HKtY3R2Z4wYYvcDSZqXZBG/ZyRxjo+gfUDe0imdQVP1B6qhDl2
	 nHnzFJtJbFsfr4B2hRkkcgmM8B1z0Z9awLHJFpLuvxLWwfWlLH3ERy3CFcAsx+4D/U
	 IIRjrFuH0xa8Y8XF4KsTLYkdxOmMeDMJmDtZI01eG6GsEn5IpiQFXZIRU9byetvm0Y
	 BzNwL9AX6k8Q0lvj4pAj8QbKaHesyRpIPS7ENQ2Hex+kGM0qA+UxCWyADJhcx2HLTM
	 tvNHmsHDLI0d3wUAD0F0eWV9lJMPxmMWpYGJvbcaZZMTc28Xb88tEXixmbXX+NCmNK
	 Z+W8Hw4Ik/QfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7E03C77B71
	for <ddprobe@lists.linux.dev>; Sat, 15 Apr 2023 05:33:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168153678577.23154.2528268225567347227.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46e8f5c1a7cfbc131a93e4e271fcbe15ac56eb592f9bf0568e5bd9fc6bc2c1fd
Date: Sat, 15 Apr 2023 05:33:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681536785
