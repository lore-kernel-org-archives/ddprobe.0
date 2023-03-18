Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 737367494
	for <ddprobe@lists.linux.dev>; Sat, 18 Mar 2023 21:22:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 23CBBC4339E
	for <ddprobe@lists.linux.dev>; Sat, 18 Mar 2023 21:22:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679174526;
	bh=UrGYYbRoMketOCEFWM+aTCfiEo2XSnUGodKFtMFK5Cg=;
	h=To:Subject:From:Date:From;
	b=GQVx5TZAoUIH4KAPCgvUJRVCEgs0Y4mEYkODkGvexD+4Mg+sqvUAPjChR+empqf2z
	 j1D1BLA8q3R0HKsNS/liRUXrjxAXvwqD4sEBWX1C7WJBjTYFHpJ/QzEHFV8BlesJxv
	 EiXn0kyJQNF5u6Oq7HNsgWj+kaFFIM8xQVwRYwGiK2Li3f1RzD7SywfYE0iObX7ukV
	 FOSDCf9QIe3Z3RKajjTnD67VkRZHMNkzcdCNs8F6ctLxb1hcMhY4RABZtCa2WUmsrp
	 +3W7UAqPn0+kHmprw3LWPYSABp7wb+MKqq1xB0+QSIoYDUoVsME9CQI4D2gLZakYi/
	 k6H9Ws9VS2uTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 07E33C7618E
	for <ddprobe@lists.linux.dev>; Sat, 18 Mar 2023 21:22:06 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167917452601.24218.15204182394910615936.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12bac32f2672fce498529c097efa21ad26dcb158f3e7b97c669aea62f9897060
Date: Sat, 18 Mar 2023 21:22:06 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679174526
