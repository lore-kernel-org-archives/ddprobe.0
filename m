Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52D802C9C
	for <ddprobe@lists.linux.dev>; Sat, 26 Aug 2023 16:44:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE599C433C7
	for <ddprobe@lists.linux.dev>; Sat, 26 Aug 2023 16:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693068248;
	bh=zAw/oKFfCnZQOx9Qurjj76I1bC7elSpbNLMWvgWQgI4=;
	h=To:Subject:From:Date:From;
	b=YSTqeZtiJx4qGQeZ5DNB+hIa0fUzp8+Piefaezto80X6s9ZqhNzk5QoJD/RPXBQlI
	 fW/dcdgyj5ztc+8/RceerB7Ejpmp89d2XDvocMgeQ6/7TZqEbqkXUCXGxyvYjX8MV5
	 1svsZIwQ788ErYQIW0/rxiQtjxs8VKRC/L8RBvcgJbxvCKQlp7XThQo6ZlM5Z9sOZL
	 +sFCmzCvMWNXRVxRaZpeNKLxaAiinkTVdqiHnYM/vin1FrLHc+pX7osuQqxAiW55X1
	 dPktJENNvtQGG931puYgq4dn9RksV7Z1KuC7Lsqtjrc1UCtL8kRRw1ToXVJpMRQ1Wq
	 XwM7lJ8UtJ2wQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5B3DC83F11
	for <ddprobe@lists.linux.dev>; Sat, 26 Aug 2023 16:44:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169306824873.26970.3147574399602699199.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e62d8f95b2f1f07b875b25349316daf77968456d8376a845837422855323656
Date: Sat, 26 Aug 2023 16:44:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693068248
