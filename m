Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBB3865F
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 08:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 67F81C433D6
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 08:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667376654;
	bh=cgiuO1ZqLTjXQQhQXNtp7PwoPqwKoCJ/bnh1C0Q17Oc=;
	h=To:Subject:From:Date:From;
	b=uhT7TC93cAdTYME6kkVhPytz3jfM7Uq0Gg4LkXpB4ltOM/pziwFBv4P0nLGFMsa5W
	 8rTx64YDcDCXZ2ff228cSnw5yQKAxEF17+y9s8WCzOMJCtYzM11c9wqAwKtYkPPMD9
	 NiHHaow1zRy4J7lQd8He8FRv1ZEQ3Ay96Y7VlJ3XEkHPOXWGHBiWPFYwneFXl8VyWv
	 ewebo6/Hthq9YF7ur13d0l15bkLDPajA4J7BGlwVQAgGL5W96hpxP+kruy7BXh5zUD
	 2wZFCz9uaKMk69MCiSgLflvbddBfZkFjbVkp5AqKz6XFTLlgwnXxu0tgbCDAFy0Y2N
	 EuS+DvjvOBimA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53BC5C4332F
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 08:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166737665433.32546.16363216019157379332.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 445368f72df9bf3417247b69bfb957c5481dfacf8ab1eb8ace1e2ca278ea96b5
Date: Wed, 02 Nov 2022 08:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667376654
