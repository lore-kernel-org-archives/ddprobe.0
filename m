Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC4CE4684
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 12:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D913C433D6
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 12:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662468653;
	bh=To/RTKlZZnBBv01BBM0VEj878jViKYJv7vZyiOqf2OI=;
	h=To:Subject:From:Date:From;
	b=XUQefso+3TVprTVzUfa9jdWR+9N2B7wcG0GYEYcNf61gMjg7zKixXccTHpcqobFDB
	 ec8PfvJnP3deUZDbcQEdr5yq7+HqVYye33R+/WZ5gZEQdOlHnQZuNwKC8LRzSSZby7
	 JG7XruDHmefAlQxKm3JhO9REw8M52Dp7MQas3EB2VNAnSoxji1H7GML3VJkuoL+jtv
	 fIO5N2NyKM4VIVRN6ykf0c8o4Ren2dbRiKrfoFucEfRoR0Hw37BnkNSDq9PHqeDH1e
	 JppnFINojAKFn8TZ324vO0IHPfFIXITR3wNLpS8P6GbBOSzpJ/+qVZK5WCoj8VLiMt
	 lYC0GvhT/uSww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56047ECAAD5
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 12:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166246865332.31110.11544122216440846912.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94b86d8276aa54044af0473daf9ab8cd9c64146e6aa35bf6c69fa1a274f6ad01
Date: Tue, 06 Sep 2022 12:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662468653
