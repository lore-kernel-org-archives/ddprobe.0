Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4CC833DA
	for <ddprobe@lists.linux.dev>; Tue, 21 Nov 2023 16:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DBXFanHf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DB23C433C8
	for <ddprobe@lists.linux.dev>; Tue, 21 Nov 2023 16:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700585296;
	bh=ACqIgNP6wFnxsHLcGaH26lT5qHIdwpmML7tPhH3Xgc8=;
	h=To:Subject:From:Date:From;
	b=DBXFanHfijFo6+pb9uRzYfbN5bjZiIMgsXTWLDH34TXh9djI7Npl9JYJEw0PCgMNZ
	 Lz6e617crd3Ccns/a2Pb9KGIJ9PK8Alfi/MvhZBywWrGphlsjZDaJfGjThHFYzXFfy
	 4Q0pJ228MixcjC3rm7OevKZhYrj5VfYji4wu2RKPKNNvL1xiF/rdIALxlpPhp30Lu0
	 h7AKTZVUGM8T99F4DugHSfdRWWje4fOVYZ3qSWLczjby8Ugcd3lqo1cuN7ByehYEe6
	 zvfkV6HOCtk+Cdo3Idi3+S6ikFP95SlrG0VsKmXME49KVU4emenchOF0QEKtXLW1S3
	 jGr2FMKxafjPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63A42C61D90
	for <ddprobe@lists.linux.dev>; Tue, 21 Nov 2023 16:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170058529639.19986.13697162245720656452.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b860c77afac1f3778ca8e57b6649afff851ed915aaaa0327fd4c46d0901aec8e
Date: Tue, 21 Nov 2023 16:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700585296
