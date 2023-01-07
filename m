Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F371C1112
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 05:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9716CC433D2
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 05:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673068287;
	bh=UY25O0G9YyxFC5cIk4K0/RbVgN0+HtpLQsBa3EwFRtA=;
	h=To:Subject:From:Date:From;
	b=R9+WiqspORO7Php6XL8cxSQaC4CRHI+5yjUuyZA0Eq2zezmxS7vfipSRL6AX674/E
	 BRHmNFBX+/5ab3WszCClT/4m8ZW9AuPQ+Zte8IW/hnAQhtv1Ta3p4SxPRRvL99Kkc0
	 +SlQOE3v84GRwzYGxjdqzD3HCbIiGTLfqMNXtoW9pmEk83Qn6tpx3PvprWy0h2bgT3
	 +9W2coltKqyUouK884EfsD3f+j2wUdecdF0mRe7xBUqxbd+QgRO5HR3S8k8g1wGDs1
	 KZxyxanrSzBspZYNvhZnHcl9zWR4ACVxPXl0dQWBfGYC46lG8eKuR4jDQ8MCZK4weV
	 4sbZic5I/9XoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7A458C46467
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 05:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167306828744.16365.8264991393581322214.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5040daadaa252567f5af07b449fa41fc31423a7100b8bf614e313a8f62fa222
Date: Sat, 07 Jan 2023 05:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673068287
