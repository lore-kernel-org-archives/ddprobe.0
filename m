Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 203239468
	for <ddprobe@lists.linux.dev>; Fri, 20 Oct 2023 06:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ty8/PJQs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 95D04C433C7
	for <ddprobe@lists.linux.dev>; Fri, 20 Oct 2023 06:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697782696;
	bh=jZn6uCpLtv++bUynib9qx50GH+F55VDymo/PAGCD+YA=;
	h=To:Subject:From:Date:From;
	b=Ty8/PJQsVTe9dlue6Sdzpxrgxm/gAAV0aqHh+HnpdtMJBsRDmfEYYVoRsEYOXy+bL
	 vNRLNQXzKEYeuMCGvQk8nNAhIxN13d6cZlWu7+QDxG7KQVUpQtBqGZsbjgHWgf0a/u
	 AxQZL4dwxgRQalV7ahO7f10s+i7TnmSMBua/cqImr4kIiuhGknStMQ2NAg4CvJGUNn
	 IlN0IQjK8rhI/f6TlhgaEI5sPyL92V/FD1MRswZqu1glHpjLioVBtlvCl9+pRn4qZg
	 9XwWvMiyNTZWN3p5pRWhpyY5/ODsVzPZKtYNZEr+c0cP+dhU/64Ysihnks2raFgn9P
	 x7FFk41/qsJ7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 76B0CCDB474
	for <ddprobe@lists.linux.dev>; Fri, 20 Oct 2023 06:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169778269647.1748.7318062613866756330.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5196eaae87532fcbdd62a35de25de989c9fcac3179b0fb8dc1ae2122b5c03172
Date: Fri, 20 Oct 2023 06:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697782696
