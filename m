Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EF9A4C7F
	for <ddprobe@lists.linux.dev>; Wed,  8 Nov 2023 12:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OSIsbxGG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 96C9CC433C7
	for <ddprobe@lists.linux.dev>; Wed,  8 Nov 2023 12:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699447096;
	bh=Gi4xpw72zO1icUqIyQ3oAYyMiJXLXCZdGtXf3eMqMnk=;
	h=To:Subject:From:Date:From;
	b=OSIsbxGGrY+ADlaMAmmN4mzYzplcF7FJ3omvpcvKnAbamYNqK5EvtOWPRg+xpP9nV
	 T/6+dybB3dHqno4saJPTHGO6OtH6x1T5OZkCBs5GnWeo27XAVkI/1UvVQerayob14f
	 OKkXeKJ9i4ssdGVGkLh/Scdk9uvtOZwERNkwgrBe8OLQOVvaq/TLvNJqdGajKL+aT5
	 AdUhWCDOOG6MpBkD9P0eQYy6y1CwwODNBsmyrcKkW0gcF1UQFLWSmtFiArOHfqcBHM
	 7udY2rXQDEx0b8n7Elccf6F57AvddjZyyJIsQ6G7IZ2OPV/kEAzbq9NK71iE4IjHN5
	 ok4DEHFALiCEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 711A5C4332F
	for <ddprobe@lists.linux.dev>; Wed,  8 Nov 2023 12:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169944709645.15134.8109894801896857559.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 604d908b5315f459fbdb2414632a342c82b6e705b27b225f543a9d4c73d49159
Date: Wed, 08 Nov 2023 12:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699447096
