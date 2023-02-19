Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3772C629
	for <ddprobe@lists.linux.dev>; Sun, 19 Feb 2023 11:28:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8D0CC433A0
	for <ddprobe@lists.linux.dev>; Sun, 19 Feb 2023 11:28:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676806085;
	bh=Dva72SZWA5h/Vj7DozN6xfpn1G0YCnSg9gbhno+zWy0=;
	h=To:Subject:From:Date:From;
	b=uTP06LjR0U6h5SZkcNspOTqd/hmsmzrw+vIrgvd/jKWSlJ8lusyKk5R+OOcwf9V1Q
	 W8qELNFca3VrRYrWV2TlB6sT3EZ9rkxadPUo0AtGQ8j/eW9bbt7Ogeiv9BiBX/PRGt
	 9rJMgEAm9CbBsvRFC5jLddAJSUXaT++413dn3Bnxgvzu32UCJp5+mFJrPysSF2UNX8
	 kbz7JlpI2f7CSSDLTQ9LvAV9kbToYuVAr71sT/WkXMIruk4uCl8Y9o0lp29fduoRgk
	 JnnXLE6QG7gdfk5aGW4DKHg6VHo4w0i4kF/hEbtRFaLyHT8maMS0isHbpcUKvmelvK
	 9a1CIfmroCDJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEA89C636CC
	for <ddprobe@lists.linux.dev>; Sun, 19 Feb 2023 11:28:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167680608577.2018.8418563285815998948.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b429fbcf61a79bf7499828fed47a869f8946a2a6823bbe25772becca81415fed
Date: Sun, 19 Feb 2023 11:28:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676806085
