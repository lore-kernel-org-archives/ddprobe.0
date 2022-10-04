Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDB0020F7
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 08:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74816C433C1
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 08:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664871653;
	bh=eq0J6fr4RbfS5l+NVVy5iAmA+vpsW+LdD57jkLSwu8E=;
	h=To:Subject:From:Date:From;
	b=rLiAVEnIM1Xh1oJ6D/M9b1Sp+RVqkLJ2koS/t5IYhz9wLwLBLf/lYLkf+fjkM2STq
	 Ny7ZHh4JNUZDFSsBqqe6RdurNMeAUHPRdh4P+ax/CB4ic7W31WvE8JjH4ePA2tsZVh
	 pO0du4MgTOMTEzh28Tvn2xy13sDLZlXGWlXBwbvZfn9iSJReTFgYsycEoXOCDxYbqf
	 oXLv6sKS/Oik2DesF270zbCt444VrHd2t2wsKjdsCCvfiQbGhgomh5FFdnu46YS684
	 oXf5k2WEFTrW4HmjIXvk3ojpXF0JxvG45m7k75jxk7xGi3ej1UXrlHL+Ddh+yaH+LD
	 tI/Z3nNwt8JrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BEDEC433F5
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 08:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166487165334.8224.12250554603447659387.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 169c8de28f01448f79369102eaf47e0afa924c67b728c71754a9268db552f7e0
Date: Tue, 04 Oct 2022 08:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664871653
