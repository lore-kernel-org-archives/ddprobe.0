Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 665F21FBF
	for <ddprobe@lists.linux.dev>; Tue, 25 Apr 2023 22:46:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1BCFBC433EF
	for <ddprobe@lists.linux.dev>; Tue, 25 Apr 2023 22:46:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682462766;
	bh=+n42GCcUy/vmhoqy+xJpUq16ad4X/0osKFIY/+Btf9c=;
	h=To:Subject:From:Date:From;
	b=SvVQHdGgOvmFTs4ITKIE5NKDrhFo70zTDQikCEUz7ir/c6SWOwMdIFVmQ9Kjvr2kM
	 5fIBOtlibGzJS4KzdgPNmP9KTeajllv0bAQZqqKIJl/4DUgD/QKw+gcbzletIXDVhq
	 Mys3G2CXuuMFLaKgN/EkBwvnIZhvvJ1BQY+F3GC3Ecr/aIPDlG0LDECI/fUC1nrTnB
	 jmVVUtYy772X8U/aM61IEqc8REQIYn99QXlg2srHqdW87AnKePmHbHBSN7CUJCF6oU
	 yuJnV7ioyYm9cOQ7/CTONMWKayol3b1wK6OGQ2NQSuDQezmW4Q4IMMCA7TcnA4Ep3l
	 Ix4zNEi2+QtSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EB233C77B61
	for <ddprobe@lists.linux.dev>; Tue, 25 Apr 2023 22:46:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168246276593.23937.96800668960576632.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c14bf6c181cfc11ba398ef14acdf700e432d4f90a70c9f076d9c0a4161487371
Date: Tue, 25 Apr 2023 22:46:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682462765
