Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67BCC111A6
	for <ddprobe@lists.linux.dev>; Wed, 14 Jun 2023 22:37:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE4F4C433C9
	for <ddprobe@lists.linux.dev>; Wed, 14 Jun 2023 22:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686782228;
	bh=ArYkjB//TPg+5wtupweJmnVuVdbPoxE4YcUKiy7DII8=;
	h=To:Subject:From:Date:From;
	b=dDwVg+qBHXPi/TPdFh/KSuGg2NrjykuYy9+E0xJvB94CFTSEdhLApm0IioyzrTNiW
	 D16tdW23rKDTBjzqy2ZP+xd+LJicAU2Mghu1Ke34SZvkQwS0azC2PBGJvLHIwKeZys
	 w7o+fQVxUdQ8UZ7V6uwzHU5bHAvTUrBQOy4KPF1eAKW6vE30S92cq9pcGP2A5A84X3
	 mrbJP3cldWrs0I9ixdHZ/CNHVvBnQkMLB0hQ0SQcWZ/bP1zssbC9lyGwIB+evKVnhK
	 UHIsxXUkL3LwZDZhX/kAwGTprmHc52fVSKNzwNwU0nJnw+kzhsRIINuoVkeyvzyngf
	 0uscJyvkEVlQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0228EB64D8
	for <ddprobe@lists.linux.dev>; Wed, 14 Jun 2023 22:37:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168678222871.30742.14304344794399371499.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ca3801d5fb9abb8c07aebedc8566f45fdb2615be53a81fa1b8867ab431c0670
Date: Wed, 14 Jun 2023 22:37:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686782228
