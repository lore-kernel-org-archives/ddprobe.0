Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5DFD7B
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 07:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8DF34C433EF
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 07:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672988487;
	bh=zsYdjcIbZGMYUvZ7xvu9WzInTO8zMM+H3clJfvV+Ydo=;
	h=To:Subject:From:Date:From;
	b=ec9n4iaaK8hTuNAX77WVLDr1UWgVbm5GLIyI3ms2/QR/Khq7nYCVHrx3h9H1eMQZ8
	 +pH0ffOBTziyqIOZlGSY32AXwndpWu+Y7GdaEUJWmVY3eUGa9SD1n5WGtBEwaLEr25
	 Us1kxQgQStYg1mxr2jzQ0OMVI6jBa18ChyZynCeBZht6WoR2rC3HUCcOwpNI9tdCEg
	 IsCM+/KVz5CaSbDZKY8DPqP+XZfoS/QcETaTaQjIM0N+wteLjrB9fhhtZLisvxfWih
	 as//h4pQEcMl4uDHr7Gqc3LPWqqHhR9ARdExMMN/5V9ajrBgY9COc2tqd0zjZUDjLQ
	 UrbKnKM+PW6Pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65BDDC54E76
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 07:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167298848741.24417.5586929804282494450.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da3cd5bb1f0fa969869750903ce851b6422c868f91623813dd312624d983645f
Date: Fri, 06 Jan 2023 07:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672988487
