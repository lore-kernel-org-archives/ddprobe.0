Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54EDC63E
	for <ddprobe@lists.linux.dev>; Tue,  7 Mar 2023 06:09:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0D198C433EF
	for <ddprobe@lists.linux.dev>; Tue,  7 Mar 2023 06:09:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678169346;
	bh=3JrKSRiN0NTt4gJXbPVbcjM5HXzCaciMmC+qxnRIRIY=;
	h=To:Subject:From:Date:From;
	b=cVC2/R8e4Nqe4/sn2KJ7nejjOrWq5X/AAfav0kyDpuzxZfzdPesIOR0IEwNd+LHJl
	 wDnU6W3HNrcLqGGw8GsjRgdcYELLEFO1VAfNAJ6h1dolbWU562pj4xgEi7Fmttshrc
	 OqdGRTfkHVkAN/01SZ3a8tqF+X7ZCVOA9omwZQSG+b9Hh4VL3U5ijM3xjEg+W+WlT5
	 n49iIcZQTkZgV8u5PCTqe8b3syFzwd8VCL827FmWafY935YdEhKlKwESpAYlw+Q1ck
	 KBzZ7YQobyFY/ZIBux7d4PRpt8Z3C6m+gRMrlqZHrsaIrSdW2ballvFYIRh7djovxk
	 aJBi0UW9aIktA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D84CBC678D5
	for <ddprobe@lists.linux.dev>; Tue,  7 Mar 2023 06:09:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167816934587.25517.9336509423831041364.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f7d9fbd41beef09d8954ae5caeea55978c64ad7194528a5983f1e7b20ee40c3
Date: Tue, 07 Mar 2023 06:09:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678169345
