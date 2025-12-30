Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30DA119258E
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 04:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767069834; cv=none; b=oS63aPE4zoqDXzLHwZbX8zH+V3Su2whOpU1zPQ29NgpbG4Ov4hQnwVmdZG8PYlGCmHdWBth0ZQTdOPfy7tcYS8ow1aiSjWztCArqyi4xsvXC8rPoK9FlYCsfYV1IU6iEdxW7q6Oc2oyElUSdLtyztoejdVtl2sw6wLpWTWmpztI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767069834; c=relaxed/simple;
	bh=4cg0+dpm4R99mfOJYHnaqSk+ROHQfErK+7v1boiFNNg=;
	h=To:Subject:From:Message-Id:Date; b=bsKzl7FS+Phkee835PSV0+PHxI4a3pg2xSGTJX7ttGQYJcbsNG2t+P9x+H/rc/vSnO5pwVsn0EzXHtvplecH1u6eERUiDe0kTYLEtZZHgk1+r8ETCjzK2yTR7U/2HsxCbtd92Wxh9zOIfIfaX7v2amOXOZMSqY+o41v+ZJu/ojo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hLjdDYQa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hLjdDYQa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A555BC4CEFB
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 04:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767069833;
	bh=4cg0+dpm4R99mfOJYHnaqSk+ROHQfErK+7v1boiFNNg=;
	h=To:Subject:From:Date:From;
	b=hLjdDYQa4ErT8imqNJjwQdlqoeT4q+8+hDpaWmoK5+HR/lcqH6EIIADUcSLPoylQB
	 9wYC0O1GmWS+UPamuHBSRoVb/WUg0PW3iZBJiRLoKQoVzJk6b+0LAW2s1UDEwtgSQ0
	 w2aKKdEKzunzRqnNkTmOh1/hfWGMXsgMi8FBPy8PqDe6uzC13JAcy2y8Ou5VC2YK/k
	 rtWobLGRlu16ucHUIhClJoFwnM9GeEehhBBMvjk1PTu1LDfQSW95q4X5S2nT+lKmIy
	 aJSwTnCyz0AStBszlcy7gfX1AD7LDSmxpZqZViMUviiUVNlc2kRrjNRa6HOd2majxc
	 M3z7cU4vUCqwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 916B2E9410E
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 04:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176706983357.17465.15240321625459697181.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92d3880fb51f548e36d475b3580a0b6c0a6f15aff1186bdd149028006b9320c0
Date: Tue, 30 Dec 2025 04:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767069833
