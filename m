Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 275C615B8
	for <ddprobe@lists.linux.dev>; Wed, 31 May 2023 11:14:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7716C433D2
	for <ddprobe@lists.linux.dev>; Wed, 31 May 2023 11:14:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685531645;
	bh=3nfP9Y8QQaXnDFJVV6Rv3A0cl4M2Pk4sUVhGbEH6r88=;
	h=To:Subject:From:Date:From;
	b=mNB25g5zk39lFG39Uicly0QCz8rneeRm36uVQqNHalGNgp0OlytHvmeqtsqQFGCyN
	 +eNRQlqH5dTKmNdEtkNdFLS1tEQx9SQe1xLJTLJKkj7kVx+Ou0MX16kMETvlDfeNIa
	 2ujiNlMVB2bsUjG/nePKh4Db44p3GeWv9I5nzyzMV6c9Frq/XItzVCqNJSO092afKl
	 F6zntl2DrpLc8ov67ygt57nvb1a9p6zMe91li3LWyKhYsZeDxOCPRipgXJLsJvK742
	 IlaTBl0IEtrwQUPg4KDyEkWzk/DctRoTfxRjF89bts7/Ndiw2g/dcCj/gPFW8/FXb0
	 +Rk4MySbfQHtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB8DDC77B7C
	for <ddprobe@lists.linux.dev>; Wed, 31 May 2023 11:14:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168553164575.7270.6372469700233238417.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba6feb897174794179fef794e1319e1287c00126d47d4be92272244c547f0268
Date: Wed, 31 May 2023 11:14:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685531645
