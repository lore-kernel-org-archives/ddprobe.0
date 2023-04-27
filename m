Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 531EC23BD
	for <ddprobe@lists.linux.dev>; Thu, 27 Apr 2023 10:01:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0501AC433D2
	for <ddprobe@lists.linux.dev>; Thu, 27 Apr 2023 10:01:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682589666;
	bh=JybnF3EiKmVV3Cyfz/fHdtuBl06lGKjSdXucVUm1Awo=;
	h=To:Subject:From:Date:From;
	b=r9klEb0EnbiVIMVSnBCwy7E0IcfMtDdf7N84QHcP3ybz4ATnEgpjgu/RrNITiqjDR
	 fXTk9pdzM6/as1Qdzb2vz30OkAEnF4IQzI1EG4s2McYIiAnco5OnuovEt/MAAsBDBm
	 5hdSIQZgWA7CDnpiT6eS00zpa4g2E7TdxsrWBRyhdU53bJtYGx1eyCl72zH6X+fvLZ
	 ix1ll9od1iBfw+K1yCo8oOO41DexNEKZoIBwqfUYGlLV3uoNX56LUKjhaoU8BHRThV
	 XLQyqU/zahMaC6U3jE7Wp1X6HRw9tnbCpfdZ5ifjMFfzjWBQ9+/xDi4TFbWuXkUJRf
	 RILVNJeKtYkkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D38ACC77B61
	for <ddprobe@lists.linux.dev>; Thu, 27 Apr 2023 10:01:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168258966584.24832.7001948966399542968.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bffbc190ce21a95dbe187cab49a632842ba8d10e9765bd110fed3d658dd9c1ec
Date: Thu, 27 Apr 2023 10:01:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682589665
