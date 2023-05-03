Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4702D1398
	for <ddprobe@lists.linux.dev>; Wed,  3 May 2023 07:48:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5558C433EF
	for <ddprobe@lists.linux.dev>; Wed,  3 May 2023 07:48:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683100085;
	bh=eqCzXAKqlKT0ktuCiA+FkYZgiMCyYgHncmpDsWNxnAc=;
	h=To:Subject:From:Date:From;
	b=ocurUM/wNLFrtYyGCAbG6T4TSE0EGuJk2EViTms6mrIfZGNwDvJU2oIRX9Oxfo3uj
	 05YIsiIzILRNT2TtOZXasz4mEXmBAIRdFMtUMuLZ84SJZodKYPJkk5ISBkGsQzGxIw
	 Grjl5P1zWL31S23PSJr3H31D+Gze10H4AcYU06Mfbxy6+jP38uVel5moAD75BiflWt
	 LnjI+8MW1GpMMCzyGqBBof1DtzfUgxONJiLMPpbb01sh0B+Ibuz/+9bQ6sA3ZdQCqU
	 YefQVB5M/sXOcAWJLQJT0GzZVeVgoPQzTQZZD4t0JJQSdDDKQwVucMnF7VaDU2txP2
	 U2MusUO1jktXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDDE8C77B7F
	for <ddprobe@lists.linux.dev>; Wed,  3 May 2023 07:48:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168310008576.25828.18106815870959482941.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97ea1fd64dd1a6165417fa264c1bc5a2a72cef224cb9a5f2287b0f8daf550bce
Date: Wed, 03 May 2023 07:48:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683100085
