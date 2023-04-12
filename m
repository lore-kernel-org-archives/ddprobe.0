Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53E613C02
	for <ddprobe@lists.linux.dev>; Wed, 12 Apr 2023 19:13:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F0DE6C433EF
	for <ddprobe@lists.linux.dev>; Wed, 12 Apr 2023 19:13:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681326786;
	bh=ffIjbPbeUiBWs09jGOYK6arXve44JLurz7WcaYScq0Y=;
	h=To:Subject:From:Date:From;
	b=bGKL3pRdQaup6M5nqLqloVtccBjO11mq/A2v/bwKBaf2saJLooOpFVTHRu6Aa1zZk
	 RbJSXUPQRthQ6+RaGoiB+wj0aXVox76GTj8OqoUmYLBWOhHsPN/RM7HR5lTq3pMHeP
	 sMzcCaenER7y+VHaOu5H+dO9k/6XOFJcHrqFLCQeHF/PMQ5yhMV/+tyRMBkpMl/ihb
	 rkcvpdQNv7eAO06qOFBIemcFRUNOvC2wdjQJR0+qqOxhEbyWeF9SUKrJcRZQDHeumb
	 rvtBC8n8dXu8ZNbrCO/Du44Fqc8lfIpFylHcx/3STyHBqt+KNw4qvyvI9i3qbD6XIF
	 HF2Zpy6rmlXFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC2E0C77B6E
	for <ddprobe@lists.linux.dev>; Wed, 12 Apr 2023 19:13:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168132678581.12799.4392467933392962897.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8d5fe0b45108190dd29ae90ef71b4e6566c720b36c6beaef479827ef9b092cb
Date: Wed, 12 Apr 2023 19:13:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681326785
