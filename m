Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5CE77C
	for <ddprobe@lists.linux.dev>; Fri,  4 Nov 2022 11:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7EE2CC433C1
	for <ddprobe@lists.linux.dev>; Fri,  4 Nov 2022 11:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667560854;
	bh=nUXyrx1urRl8JZxSYTPpnn6mGBbR2BTeMQ+jfP4tp/w=;
	h=To:Subject:From:Date:From;
	b=EfX4pUwt3XmAfJE9t+fTJ42EtNCs2E3CMKs4i0KTOyEvRh4jDHFoql3UI4tKFiWhr
	 fwuwyKiz94cn9bJkOdyn8vDZF0JEn6MmDzrR1xjQCZsjBbSC8S7Hbkwo/FfXxLZKvK
	 /0rgyapatMEEenFUnOH7viu58z1iLDGyWbj02kegWtoKrQ9tE9OZ8oLFUvGQ/YEBuI
	 5Xjdm0jCabPaPk15hO7Jjq2VtKBpTYZsv3FP0CrsnrdASX0ee4zHlLzih6JG+E+ff4
	 PM6JgitKlJw5uitS+pR1UtLQK2moRVvtk2Wh/ESavkLme9BldSCkOyiz4mmbJwltqd
	 VWRf86oPNKdsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 615E6C4332F
	for <ddprobe@lists.linux.dev>; Fri,  4 Nov 2022 11:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166756085438.5497.11739386978385373990.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54aa419adbdccad51a847419483753bef663eb5b350b5b3d944855de88533b45
Date: Fri, 04 Nov 2022 11:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667560854
