Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BECC77F
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 01:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 754EDC433C1
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 01:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662858053;
	bh=GvBZq6HZxoRTcpAhKQE0NcWIQs5fvZUNcdly8D2I22E=;
	h=To:Subject:From:Date:From;
	b=XhErg68YDF80ktntgs9UItICzLcDxgmiQbfvjdOqpLCyLOCZUmY9OmA8KlZmjScJ3
	 YB/97yAM2E0LjFbin0mKSsomDSb5VW2akqf/YBNzqXKFrYb7Ck878uF3pPrBdbCX9y
	 QjelvoJXpip8hSXXwf4HtzB+729L0i3zgj/T746coFegFZ1vrC7ZSU4gc5h9eRYG+e
	 tiCyg6Qf5s52zFMcfcIWLB+YNHVdcnDQi6cB7T7a86b++jdLfCNFfqZ7Q2dg4vh2hU
	 igX83R+lNUCuS4dH38fmylcJLM4BqUbe0zkalAFzD+j5Oj5Dc14t5At+WBFnlejiLb
	 XEGhkyHkU0SVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 511B1C6FA82
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 01:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166285805332.17335.7499527723907843379.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d566ace9c8fa53c529b42efdf360901de56f347c291581d52541cfe70735ecb8
Date: Sun, 11 Sep 2022 01:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662858053
