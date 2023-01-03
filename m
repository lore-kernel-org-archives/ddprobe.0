Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFF34160
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 00:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88FE4C433D2
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 00:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672704087;
	bh=7JG2Cfl3uwTHMOM7YBFUeVQ+RYq95r2/xCdbQRtkHJ8=;
	h=To:Subject:From:Date:From;
	b=MmHvd/k3EWXzb9fImdWJOsILKLROCr6OM39F8uJqgFKbaTk6F73xbKJyv6pHHN3LH
	 mnx4RwTB7Gakto9kEI0sE+WMIz4Wt+yfUG5PpkCX3hi7GOqPv2UB+u7QIEi7KIEw3Q
	 8X8gcHNfjOOnZbX5ihlIR0h7lAgwQh4u8zdsYX5K8hlnmLf/Z5S6bojnrQQ8i1O7JY
	 6Qf97T17Nb3udKMtlG7/D5A9XsMLRqI6BtGA4I1D11qcHH6d8u1WBhrl3rI9zDOX4j
	 Q5iJeXWegpRblDnlQ2+LVfteK1BLDdLMryFBBXwJaKNSMAq6zPsyAahNZ+Va7sUB2/
	 HT1GumqTuEIfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B4FEC46467
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 00:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167270408743.16959.593560240906875172.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b092ec0a18ab7ca2e694d5ce75e15c349fc4f3b0e85694d1f21a76c849b81a4
Date: Tue, 03 Jan 2023 00:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672704087
