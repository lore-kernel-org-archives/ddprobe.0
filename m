Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A96123C1
	for <ddprobe@lists.linux.dev>; Tue, 10 Oct 2023 03:37:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gE1ASqV4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9DDEC433C8
	for <ddprobe@lists.linux.dev>; Tue, 10 Oct 2023 03:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696909028;
	bh=BB779eBmjKBeG/bD+n4ig42tVsw1juGcqc62Mmu9ooM=;
	h=To:Subject:From:Date:From;
	b=gE1ASqV4vLA0SIm/pebagNI9oydeKokZmU20yOUeo2Iv7zlmgH5/yOADw2hk1e8CI
	 dXLRS51FGaeQdeUvaNG9iV6TfUe4rVeypqajStNxkZDcFMyOOCpiVY9Jm3F71O5cTZ
	 o8RbS5nztPivK3z0+GpJXdCOFtrRHR6J92BzA2PMWZYenitc9kGZQOJfV977uyZGut
	 O2JxFIpdHbe24SJhgPIh0hSWSwJI0msieWWXTLlBf+kwYgBpsDFIFTQQ0qBme3s9Qa
	 kUs1zmmVoV5ODEbQv0AfVBqS/+wybhTXcgOX6CvCHye30/YJqY4nIlnXwT9UR0ge+Y
	 5Qx8QjnbS8BRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9647CD68E4
	for <ddprobe@lists.linux.dev>; Tue, 10 Oct 2023 03:37:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169690902875.28195.315483634115581519.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28592dbad64a764a63840042062adcedc4a5f3135378a587b6241dfa15e3bdda
Date: Tue, 10 Oct 2023 03:37:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696909028
