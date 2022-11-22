Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1798A20
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 02:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73F80C433C1
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 02:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669084854;
	bh=jk4Cg5PrgyKrhGTCLRaGiivY+mpeBD9Tln4OemmIkYc=;
	h=To:Subject:From:Date:From;
	b=Ki9KqWF8Vayt/UerIBW4gBXzn1tzINffhivSmgrh6n3mZc/GnzuAo9zlypjxQM5AN
	 NK7MeQtkQ3S+Elpa8CJnyYnbdBUwtNGIWKvtm/DgwBb/Q+gR2PYcMQXa2jKZVBckuZ
	 NZCzvB5NCRpZ6WzhxFNzPHTcRQvzCrnihsk8UkghUzml1oewcOGBDZyIWVEktwDufj
	 2nLiteaSDSNaNZsULv62vX9aSiiZ8kbnHzclrIN4XVWZQ9420Eu912GmuB/wF+HxQh
	 CU/Vu+LEaeIj4eH8W8KpZHuEgcebK6rIlrKRVxNxalD7lm9rUmxb/NXRtlajj4oABc
	 4E3Wj3iIJ7a/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5AA04C433FE
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 02:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166908485436.19572.1007624639270165449.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42bdd43ea2a5e9923a64ca3a5fd95d8429ce316f5d389599b7062b846d50aaa7
Date: Tue, 22 Nov 2022 02:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669084854
