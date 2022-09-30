Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2A9E186B
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 05:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FA1BC433C1
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 05:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664514053;
	bh=nmQRGZ22ebZy6iCDyBQy1z5CjEopmZq+cYnf6+dihRc=;
	h=To:Subject:From:Date:From;
	b=BXqlI5H010+1OA39jtsJ5IfsSUROEEuH8QVvvjrYeB2olpCBYcrpg3VCf8IXNn36v
	 Ssqs+4Vpd2qu84HrBugDrWMJ3C7irAoqTcDRsZFj88HoHib7JyN0kMZACU+n4Ks8b2
	 6sYpZ8b3NU/Epkc+LU5InGA6k7kxJuwiTlq5y/vTqE1ppCmMUuY7A2ZP8jsFBzNVuG
	 GV9VJi8rpQPA3v2YyE2+tSEgqyJxfaYA5tWdvcN3z4TJaPwAJlmGfUkNHOZ347uxSp
	 KFHID2n3QdgQRlGepoJ/CxfcUKwsx5vPJdZJgcC5pbn1wXgvZfbfyNBhlzZ/E5BIJC
	 jUJcz228qhXqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53E2AC433F5
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 05:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166451405333.25767.16981679865207503794.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67872857f3c77f7e8bf10e49759e317d9342c85c2523fc9ed8a88f60a1c342f3
Date: Fri, 30 Sep 2022 05:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664514053
