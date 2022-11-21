Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5A6F645
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 00:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82C0DC433D6
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 00:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668991854;
	bh=6GGzgKMkyfURMUuX2nYhJyy4YmXvJi5ONIHBJ0f4DKw=;
	h=To:Subject:From:Date:From;
	b=W+NSJDuF/abZZNdImnSg6MkKoG/tJ3QC/tRvvkXvTS7+3E8gK2Wv7kR4GUDmmYYne
	 bjpavFFci8VqwZ8WzGwq0fmCedTP++9YDlOZ88oJRPyjOOQLyjFFv4eB8hAFd9icHu
	 9m7lMLHF+E6EpSViUQTeMb53EByFx7ICUyWVREhILQKLBtjrnJSBbLz7pEY08QGtgj
	 c0TbBVayh8cYldwAiGOXRt6RgX6QR0ncl8di0ngG2hEhwNbXCY7bGFQi5ivcDxTfKG
	 8aVcMrLjYJE62a/z+PUwOzKfZ4nKpqBI8HaL2m/mbS13NISiOeSeKakL2U824iRv5t
	 HCO1Qqh5Zvg+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60D48C433FE
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 00:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166899185438.17859.16365082459443417677.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4f1b51b66333dba0be3bfaca893d1f2e60f9a58deca552336ae1a5b39f93ac9
Date: Mon, 21 Nov 2022 00:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668991854
