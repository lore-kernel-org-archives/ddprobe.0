Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B127D7B
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 10:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 65059C433D6
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 10:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664362253;
	bh=wEgTIysNjxrBjsENw0QepjvXtxxNBQf3mOglpp+vDcY=;
	h=To:Subject:From:Date:From;
	b=joEw7VURBNQbjbLxlOAOb83LdCqxY6ZrorkNHqfGemwqT415Fzf5LonGA7d8ZC0QM
	 jDlAItc0fLA3P9CNIYdW3HAJu/jZcKfKj1N/G/3sgfETArUE8Q7uu6t5eTLw/UjEqu
	 A+jFkCAqlryqqCzTHnEZnU2UQsdTnW/VyabRqcMSyTMj0SounCLReGdXgaiPDz68nr
	 dT+jO77dWkepCbqoWZX2GS5220pBGsZew8LFavkrcfxInL7qWkFDlX1hQakftp3x9P
	 SEQVgSRDSCZa4ltBBDLCGRf8iFgvUsDALcSYiIMQePSp/Is5S4jVsbmFLt+8WPNSWH
	 dcAcsTlFz2q+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4EC81C04A95
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 10:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166436225331.26161.16836606386856138145.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efaf8c90459f11495bd6fbd38a6adaaf28debbb2bed846e45774503d58540c16
Date: Wed, 28 Sep 2022 10:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664362253
