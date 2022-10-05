Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC72E3217
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 22:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78437C433C1
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 22:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665009653;
	bh=5JK6gu1lCJTF+yIWNOJOhzwxShVkasqQJhBHal06/YM=;
	h=To:Subject:From:Date:From;
	b=VrXp9AQ1jzi4syzI7VoFJkHTPh4TMh8NNIklHgIDq7RD0OAYQgWw/os2AqBzHM79t
	 W5horXsSJiQfN5AR8Q5+zIwSvU/G4uA2HG+oVODRGMuhF7lnQcytJZ2qgxK5by55IR
	 swB9b0Tn0E7HZMQObgCTJ2/Z4xH1fFrueswj5f3Q4yiJddb3IAJD51TxyaBN3DtRvd
	 zgTk107X3NbjVbv30pY8GHTTQm7kNaprMHZrc3QI9I6bPf/YdVe8TlkxmGwIcXujE5
	 JSRiFnyOJqJ8RtPbTqetdzfpJOyeeLen7qW0T73Rg4JDCP9Y/3Ya4OC28jOKq5FB/V
	 j27PCnhv7kxbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55F1AC433F5
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 22:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166500965334.32274.11049045500667596000.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1cf4a9adb3c701d47039650ce4e9158cac17b6083f19ebb2e5083fa975c281c3
Date: Wed, 05 Oct 2022 22:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665009653
