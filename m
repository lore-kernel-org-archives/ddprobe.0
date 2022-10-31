Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D06F120F2
	for <ddprobe@lists.linux.dev>; Mon, 31 Oct 2022 11:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8069CC433C1
	for <ddprobe@lists.linux.dev>; Mon, 31 Oct 2022 11:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667214654;
	bh=2fSMQmafQbemh8wFBLEv6CgDZS9+6XyTFgqo0Oqf2wQ=;
	h=To:Subject:From:Date:From;
	b=ptjo/rLIBMSp4YF4vcBW6qqmZWAD/w2LNlV5EFkx6eH8WcHtD1VukauP1UaNmJCPd
	 UOr2LCK2urRFLjtxTBZnXhGrCSngEGDqDiomImPeinqU164+0t5cxoU2Wpwssttygn
	 USo1Lcin7xGWIxWzfmw+dIASPXnD1GogW5maug4C/1jqVTDR2NqEizXQh43HRaKBrl
	 y18kq1a3PMGJBvcEf+/2fUsi6aFtlfPYniwSp9mGwa1nQhk4vPKrj50BrEjndblw+1
	 rdbU8Qm07NTjTR2FbGgLty4PHYjjxf8gSoYGdBjVtHEUW4uv6o/X7khIi8BkqkYjn2
	 MBlwXfDAvnDNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 628DBFA3740
	for <ddprobe@lists.linux.dev>; Mon, 31 Oct 2022 11:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166721465439.12207.13394848591997957718.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eecf81ff9ee4dfc4c4d2820b2abaf0c6f56d07340ff81ffe2105c828adf7815e
Date: Mon, 31 Oct 2022 11:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667214654
