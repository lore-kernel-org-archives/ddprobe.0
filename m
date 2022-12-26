Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D386D7EA
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 11:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82F28C433EF
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 11:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672053087;
	bh=zrlLhxifWU61p4Xy6mFSXCo4H9o3iUQSwhzMtE6zlos=;
	h=To:Subject:From:Date:From;
	b=OzxB/QOMbIb+tCytyl66UNp8HqPUsnD8HcizghIGsoF4QrWOKthYtDIA7xieRT8XN
	 1hu6T5PSJUJ4E/qhPsRkUxTfoSRb7eF4sBJM7xFKDisN5rG5MZV9uLeSOv5K8zJD2/
	 tfqBwnr8Xd96NmKcJeAvbrZRhND/Hg1jeyuBUfjRMy7MicwbAGzJE8SUe4CMD7v84k
	 ZlcPhrgrnra2lzOaJABJ+N/ydIpTaf5xSEI69FpbyKU7HA7a7OULMyvCJoOP0tEe8+
	 aXieySLnC0jfdqK5qwX7MFcg2fX4J7ypnPFzVphYbKu9vWkoipNsiTVXmJ7teJWwGw
	 fMGpJ7ogFZIKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66A8AC3DA79
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 11:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167205308739.32707.5169727117755501504.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c35682b00fd944ae6c5783f849e6bc66fc8354bbac6b3072fdbf5bd0df93dc46
Date: Mon, 26 Dec 2022 11:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672053087
