Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FCC179E3
	for <ddprobe@lists.linux.dev>; Mon, 25 Sep 2023 12:55:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C62D1C433C7
	for <ddprobe@lists.linux.dev>; Mon, 25 Sep 2023 12:55:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695646508;
	bh=y9m47cnb7RN+jTg0jazqNDZ8CZe0ny6O9A3DUqgtjGk=;
	h=To:Subject:From:Date:From;
	b=NfXG6CeHAzsSUFzOfHMgk1sWi0z6YbROe1ETxbC8hLkPvvCefhRvSXRjKMnNPlb8/
	 GcV1MYLFEo3tepXDjMju5pYub0AZj+i2ix7tvfsvvimVPp58UgIHzA9XNhYUYnepL4
	 aUDFI+wrZbDX5tWJMW5HKj+fyXqpF3WPxR+kmlt3mtq+60+CujmWkwn4xplQCkLWiz
	 dA78MP3MwXk2MirqZCWA3E5uFuDBK53yZYIP59hKXOoIbw4asVJWg381bVmjcLCzs+
	 nPfNhL783eB9wjSPmKCvWzh2kbAnZPzsf0gSGqal4UEWriUlSCI1kAWJowKxU++EjW
	 zAUDFH32UtRzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC35ECE7A81
	for <ddprobe@lists.linux.dev>; Mon, 25 Sep 2023 12:55:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169564650869.32066.15902168169523344691.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04dca964d1f86e1cec184ca3821f9d56c9c6572bbef5dcbaeaab1f17124437db
Date: Mon, 25 Sep 2023 12:55:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695646508
