Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 146391F4706
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755323994; cv=none; b=jBs0IO7xkMpQLiq51HtMkw+Ij9MyYBWF8mqnyVjz61I7lR3x6F7wMquo6lzWJsI3Ga8Z6eNyEsqrjHM9wE7H9gIlaQPWEOrC6od9wgvkEw0khfu9clxhX/eYsT89YNrdePQB0uFE4CK1PCq68xVZWttGqF8+3LaODpg97x5nnMA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755323994; c=relaxed/simple;
	bh=kMKiDfELbCLfZnrnlx0UpfWfNWZ80CSyN7gAVh52Twc=;
	h=To:Subject:From:Message-Id:Date; b=KFQvkZBmqB2Gftui39yl1XruVXyKJ/lyMWdUlAzBJvs1ZV1XVA80ETl6irwB/MQ1fyx7rT/48Fw//SnDIJBVqq2I/SKkREomxhSEKu4u9FLl1QH3I1XSi+QMbg/vgoHL+lUp07NELXjOOaVSZ3NnD9qj8aJ+PdKRpwvSQzPxZPU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BZiBP+cF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BZiBP+cF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F081C4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755323993;
	bh=kMKiDfELbCLfZnrnlx0UpfWfNWZ80CSyN7gAVh52Twc=;
	h=To:Subject:From:Date:From;
	b=BZiBP+cFv+b9VlChb3lp8EYFDfMHlwFrYOt9TPEN6zV+Ka4ZGmgOCxllbs0+v5CmV
	 XEBHsnmza6U1brzfl4Uo+klnajrYVL4Li1fiKtuMg7Wu532chzC+Sp4Ept3081li68
	 3CGJw5Z85Yy+jw58W/JDSE2b9FroJjgD2R1Z/ip7kuSL6F1T+uurl8vcjBCq71kj9o
	 XxMlBj6Eirf+rnOv8WQy+W2MYNuA67hihGx3jIxyblvySGqD1Ww6SOEHx9VTKaPMcn
	 cqJMK4WhrGnvSYImTyBjzbI325ZkTzFlTz7sHjHYF3/3q7Gs1krZF9NaUxqTIslW4Q
	 Z4QZaqTnjY50Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91BCCCA0EE4
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175532399357.9943.7356671039244461654.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f3b3bdcbb3a25eeae411302f8f56202ec6faf06d77346de81e5170f9bcb4991
Date: Sat, 16 Aug 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755323993
