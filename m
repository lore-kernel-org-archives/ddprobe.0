Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8D67EBE
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 11:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6487FC433D6
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 11:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669806654;
	bh=kq7n8FP9I6mCUYvlo/f0OliaryE/uT/0KYZYF9Hr/AQ=;
	h=To:Subject:From:Date:From;
	b=pyhvTtacLygvuMIWXTX8em4f4VLflbMAmNVjM5iWqpDDBzBXmt8igvnS5wOBH+if5
	 liLc08psr4yuvbZWc2ggJq3aB5SZn0xIJIRxzMd8KUt9hCjGYEr9/CnchKbp/lg/ii
	 Vm4y3j+63IFDZ4Xb0IP7YZ/z52oCE6nkw5XwTCUBIJnTNj/ueL3fNrCCbIZUTwreeU
	 NuL1MVnstMd9pbV7HLl7p6sdWTFoGMiqmB9mDnumsWhh8eFsK5XEpQ3bmTrmCe+j/2
	 dSmjXoma1UPP8ogj4ljlO2LseBHFBgcFmHWS1yHYrs0eIwpuP+Txz03Eg1rRiWQlEp
	 ZXNr6RYwd6+XQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E9A6C433FE
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 11:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166980665431.4464.7407389828130634343.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a9ec178351d43b3eca767259b41547c571a3474093e6bbd67772d8a4ab388df
Date: Wed, 30 Nov 2022 11:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669806654
