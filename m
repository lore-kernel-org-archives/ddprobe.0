Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 564F415E1F8
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 14:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715263943; cv=none; b=HJg9jyzl8cgfeDsrqO34aCn2Ll+64defbUzu75YD2d4DQNcbgQPfCIA+2RoOOzU8lTbBxbKCoxElW88N5rLbeXqSV25cz1ubVvjyyj4WP5OleNSWWI1nBQp6wg2JfLBzKn3lZ+S0NAASZLwXoP0SfRhJaxTy+QNZoUUQlhLdWC8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715263943; c=relaxed/simple;
	bh=BnqDhY9S/L9Ql4KmhdEUUlmPia3kYEHJd9L5GU4JkvM=;
	h=To:Subject:From:Message-Id:Date; b=blKMF6l7pMOQ6P5QXTTA9Hm193/be0otNR5Rr5a7T7e0Dps9B1Pkn8w9ttXXwY1G5UuFu1QrbUmDkUF4/OVLGq8cLR4mAzXTzMoEGU322B+ImMPzB7+YF9ayHYo7TuCdtZ8FCRj5Xq6oP4OvLDfvwdmFMB74Eb18J7hayZ5iX6c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SDRsxba8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SDRsxba8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2890C32781
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 14:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715263942;
	bh=BnqDhY9S/L9Ql4KmhdEUUlmPia3kYEHJd9L5GU4JkvM=;
	h=To:Subject:From:Date:From;
	b=SDRsxba8mJj/0qVcqJNsWIoIzIMMfv8xQDbphnu0wnHQwjd6BK6hKbDz5MM3WBkWr
	 V0raolANWZZ6+pRSc1kWfGusIvz1SHF35d4oVUpd38L+bo5MVtkIgs0/XDjFoR3TzC
	 KIfxPpxFEXzWUfLriL6kmsbQ4bDMF0WgrC+FhSGeckWKQ94TwU85KF+itJzpVVaF9V
	 XDe4gkjDJgRHA463WbhNtTtLU7tjU4hrtQY1duVQF4MVgmSQ002qRv5Y6JmEXcn3ds
	 qCn2/tWmT9GeuQPweU5LMtJ2zP+ycySSYh+dMNUTD0XAk82BFPXsbNGVMzPbcO9Dey
	 Wkf6HCEgIbnIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1075C25B10
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 14:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171526394277.26634.2637268430879007817.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc00074fe9024da38ce888fdd9521b3b32be3aa6fada87c0a17849bd1a652e2f
Date: Thu, 09 May 2024 14:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715263942
