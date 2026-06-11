Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E5943C10AF
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 22:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781216794; cv=none; b=jPqfQaTLMcdsdVzajGtxPAkvxe4FnuJApA4WiFpk0jXffEoINKk5TbiGj8VmJnFh/wuFNl62TvmyafJvTgUwBfZgOayNDIYqKkVUcoeAoPb2jBP7FLE0UnnDyHBnD+FWlYoBBXyxAHj3/fRTvWxsfLPWzL+cwfNB5owwZHHkHo0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781216794; c=relaxed/simple;
	bh=Qc1fJ+68m24xJrybTH9PwkL3frRiqGUqqdcRLOOJhKY=;
	h=To:Subject:From:Message-Id:Date; b=RGc1rh3AE/CiAWVDmwt3m1MEuPr7fn5qoW5h1/7asCCe/hgt0MuviQN9jSpsef3DRWXNGg734rZTyixrGcQR8fTRk7WIT8mDyt5bztm6AOb2Aj+TzNyhLq9rPtzOPldF4Umjeeq4/0qbZj0rTMMxe/41HtHrpI3iBqIk4qi2Mzg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xjy7zsP0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xjy7zsP0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0ADDC2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 22:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781216793;
	bh=Qc1fJ+68m24xJrybTH9PwkL3frRiqGUqqdcRLOOJhKY=;
	h=To:Subject:From:Date:From;
	b=Xjy7zsP0DfqF5Uw+q/7OD1u9hAi9mvY7gbzOpnlM3F4CQtriPDajCF16q3Q75fBqR
	 H1PZeS8q8dbLTNhpwG9gSrLDbQ7oAP9PQNfsaHybAiJY5ionWW7DyHvWYF6slAtnn/
	 E1JzmB4bp/wj8beQepQkVYlN39d7CjJdYVOmBna8WlCJOEDwNhP1uFRGkqhYvcB2Xz
	 zcJ69N50wwwPzm2iM/2Ael6ghthHNafOso9+HyZBuh6np+PeJdv/mssJZNv+d56fri
	 dx7b3nZuZ8yWNf7PyR8hLb9Wp8Cg/lL0Sk7rxxfKVVyPtbRvMwfhpX+wC7NEu3VdQ6
	 xAbPctZ0V2yiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1A1CCD98CC
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 22:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178121679370.31198.6825561940034535322.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8b27d63ef8fd36467e31b73bf01be873c6c056c0369fa948ec871c7d734e125
Date: Thu, 11 Jun 2026 22:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781216793
