Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F19EC5EC
	for <ddprobe@lists.linux.dev>; Tue, 14 Feb 2023 19:27:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6712C433D2
	for <ddprobe@lists.linux.dev>; Tue, 14 Feb 2023 19:27:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676402825;
	bh=lOUHb1Ey22ZJ7y7VJXyb1Vu6daOC0Px2aKuPsfJIYSw=;
	h=To:Subject:From:Date:From;
	b=jearuWO7leftAYjJ/VhZbMkb5ikOuwG6rkaHczmDQfP8SiMMM/Tcd52Le6WIodVMe
	 5vWvTUtdA5UH/bNltB0VZufMn6rRpAhDa3nQS23RigNaSTSeNgXKqu1hsmhE54R27f
	 6p+C4JYm6Q+HPIVBBzhZxhfPP2Ufvypqkyf+dXkABlW3oI3XRC3yBqult5sqIAID71
	 IxrzGgrV+xkV8uDGNYXDAlSKA6IZpcVzgfuS+A+36eT8VAl/5TeLWJWuEv6GXUaulQ
	 GZgj373CiGkgv8e2YX8xA1yBMz/+/SkEfjdPBzMXLK5Tpk948dMoCisOhC7MkpG8rH
	 0RVehGj/lMEkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB223C05027
	for <ddprobe@lists.linux.dev>; Tue, 14 Feb 2023 19:27:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167640282575.29471.6405659453009917302.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 484f6b70a63fd09262d2255e47ae0c57bea7d7a10250e8fda40abc060f88c896
Date: Tue, 14 Feb 2023 19:27:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676402825
