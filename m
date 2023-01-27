Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 500CB290D
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 20:33:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 01299C433EF
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 20:33:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674851586;
	bh=ULv4qvMd9xkf7uekg8KCnM/nv3i/08ImtFKdP/qmpxg=;
	h=To:Subject:From:Date:From;
	b=aOPVmPq5Lrw4apvnxUc5hP0Y/QEaH4DmNYqlPtz69p6btSQi4n8G91v0BXFciTxwG
	 wL3ltvd2+4Q1bHeiOdYhyQlBPbWAuJxtZptfmVGT9u2jMjfAGQYIQ7b4NbEmCg659M
	 t0f+4jIYbGQ7IhE5/i+okAl+HFLDVlb2WuSAZ/JI6ZiUe5ZHWlPFLbGQwLmcaVzbac
	 leGLBj1uugkhK8Nzs82KxAgCEn+ekDYsILn9AinvcMnU+hO+RU8HBBf7OOfH0tA3HE
	 cWcHYF8NhbqDXMqBkcMtz4K532WkAJsJ4dowE/f1dLXWAX5023qYeBdfIJV11TzG3C
	 YGVc+RmpIwRCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D54F0C38142
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 20:33:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167485158586.7124.17158769357230677765.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f29e3683c446c315787191884302e9e03edb91d8b49de04c3b1988bc3f6b5de
Date: Fri, 27 Jan 2023 20:33:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674851585
