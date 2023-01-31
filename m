Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4293D659
	for <ddprobe@lists.linux.dev>; Tue, 31 Jan 2023 06:53:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5973C433EF
	for <ddprobe@lists.linux.dev>; Tue, 31 Jan 2023 06:53:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675147985;
	bh=RRIE1Ext2NAaVitW3wJcLQtXfVymH1DS6KOjVRAqDMo=;
	h=To:Subject:From:Date:From;
	b=QfXusSJJ9bOP5lZKnGjxnWXOOQjmtO5E8vegoIHo6APvgCzSHJDhEctCjcdliUc2Z
	 8/aBbjOpkaOflz4/F2VoNp7xNpPmOda/cYAg/RD2aJVezIdb71KDoPdbCcynwby10a
	 8KTFbK9Ob0Xi+axhWI6XdM5nHBgJa5JKsQuK8HitjqTCUU/S43gUyPBcYzuHjpDlEy
	 rjpoXMFADzCvThjtQfbsEwKaBEKP1JcOdLqLh9uA0RtO7jql+8w3UWfVPnCEcX+t2O
	 eWBhOk4hRnuZJ9YfWZTXfJX5Fh8zsprx2q4XS6mHOzHhV3cbgQGK8q+gwpx0TT55Jg
	 rxA5UdRnqERhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9E14C38142
	for <ddprobe@lists.linux.dev>; Tue, 31 Jan 2023 06:53:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167514798575.21543.13059149700830435386.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4052d4edd89e4cccee62ba0dc19b7389e1deb92dfa479968108946a674c99bdf
Date: Tue, 31 Jan 2023 06:53:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675147985
