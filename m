Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D03E1C2BF
	for <ddprobe@lists.linux.dev>; Mon, 18 Sep 2023 10:15:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC147C433C8
	for <ddprobe@lists.linux.dev>; Mon, 18 Sep 2023 10:15:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695032108;
	bh=BBB0sIhGIsKgnVEipw3PgKkE7FS9PSRDz2EvRTn6FNU=;
	h=To:Subject:From:Date:From;
	b=AVXn1NCiBu5VFXnx+KXXaeloVjZm0zev6HQ8sR9knrpY2Kip5AfGTuC0zcx6mNAl0
	 4c9WmRAgTZb4SXtRcOyCvTReoaSBB0OzMj+cJciIH3GfqJ3h+mFLRifW0W+YPKnV7Y
	 7+G/81jI/sSFPTGYWsYlCNAGu8wXmL8izTb6N0Tn7onuoH/UnbWVlHh4q3eYMJMvdK
	 FvnFAbVoHndKcTi7J2NlGRTkIJZpXnUW9WR2CFqSjojHj0vhOqvd6lsraS00kHHa32
	 RuETBMG3fHa85zO+L1+41E3TBKatJa9zf4JxJMOsY30Hb/f3KXnINDNe5TZPgGxSh7
	 QVamrJTz2gI8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA410CD37B0
	for <ddprobe@lists.linux.dev>; Mon, 18 Sep 2023 10:15:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169503210867.8944.11922005140566844201.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88c8cb764a7b4597fb4ccc217f429ed0bf418b1c584e82735d1fd265ca641e71
Date: Mon, 18 Sep 2023 10:15:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695032108
