Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6FB73C686
	for <ddprobe@lists.linux.dev>; Mon, 11 Dec 2023 12:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YeXxmD0b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7AC22C433C9
	for <ddprobe@lists.linux.dev>; Mon, 11 Dec 2023 12:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702299496;
	bh=DtubTGLykfHJHJYnJw+V1sW8AO5WLw4QCvnX4q5oQLE=;
	h=To:Subject:From:Date:From;
	b=YeXxmD0bMRQGH9LZKl5exCiWYrC/ajBtKjz/Q6K5xjjzv9xX2sp19syRc010qr56R
	 KjzY648ikRa1k0NkLHSmWpvB+x275RGP+VVYAm0ZwM3aTuQtFN2+8Pa0av5swPS6zb
	 YpB9diBIIgaWenVkZgyhYvEABZN1oVUc1pKjsOF6cEigiYmkvtjRADGiT6MqoIkLTx
	 5UeEj2SJD6Q8ZBF8sK4rv4y3Vecjq/l5ufbmWBY5w7ZR4PfWbSUkADietKlP4RMc7Q
	 cJvJZ0YC40TqLrGD6eqXihK/DxQGZUkNlJ2DkjDEzMICvXQFo4AudoYby1vQgw2cIh
	 m0UazwDSl3blg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 634CFC4167B
	for <ddprobe@lists.linux.dev>; Mon, 11 Dec 2023 12:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170229949637.31942.2990652012246817426.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57644629301f696676d81cf4629676931469c9e5dfd1f6ecd155bc9298d364c5
Date: Mon, 11 Dec 2023 12:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702299496
