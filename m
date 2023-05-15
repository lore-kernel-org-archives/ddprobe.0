Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65CCA182A4
	for <ddprobe@lists.linux.dev>; Mon, 15 May 2023 18:20:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 2680CC4339B
	for <ddprobe@lists.linux.dev>; Mon, 15 May 2023 18:20:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684174806;
	bh=SYpwLxsp5ftTNi39/stRSpYlMLr92A+8M9FbtI65qkk=;
	h=To:Subject:From:Date:From;
	b=F3CZNr6QAUg4JMSo132l4lUP+LXTNpxPlr2dPRqLbAYBRh04n9vuGJfaH0dr8RClh
	 IZOZLbX+kE9Va8+nh8XBXKq+pX61vHxRT5AyZS/QKadNuyF0Ki+CUwDgzdJeAO+N+6
	 l7V8iFfwBFNG0TZFNDQGFrrPsGMex/e2jIhQWnpPycn1d98YeZNrfXi3g/ENohQ26+
	 Xp+HE9b8I43XNb/+13wqzDpQ0jC2IU+ZSh4QKEaioY3mC27LaLoJZUFxa+wcE+rIED
	 0uU9f6CcX7Ef2sd4lIz9OS/+a3pRphHlLGHM3LgXgQ9cd+EUC8vr2acBV1YNLu24e2
	 jDNikj0MOOnhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F061FC7EE24
	for <ddprobe@lists.linux.dev>; Mon, 15 May 2023 18:20:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168417480590.2996.13975028470236448190.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d364d150790cdb701bb565ccf034bdf1554983b326607baa0a905df9dab3bc9d
Date: Mon, 15 May 2023 18:20:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684174805
