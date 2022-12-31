Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC1FD15B6
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 05:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8BE50C433D2
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 05:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672464087;
	bh=vdw4cm5HEA5/STfJCEbpAmGvQUFqw7JKhQGfokpKNIk=;
	h=To:Subject:From:Date:From;
	b=u7gHXR3wRHIhY9+nivgpIMGQr4swMUEBGXjASKLjeoQviqnhSEo3mCu9swp32NvcL
	 0cxeHV3XgoFV51DqKANmAYHvLZE0Sey381OiB4yUKXPrvqSDz5ZPT9lruI0YXFdMFS
	 j3s3m1OdSnZ0lCRHRV8/w+nwBp7qGx2FqMnt+pQnIWBcYYVm6YO8orQ4rjkn4LRFyj
	 7hlKrSjoEyQczxhccIZf8dSW4fBOlHPuvEt4dvLpiKIV/V0KDLvvPXROrma2gAWN/x
	 PslF9KKsIUF619JJ3nccmOI/K+2cnBoXLBWoDX+fweeEc9BLlswgtmT1Cmr6+KoXek
	 MfaMB7w/y28Gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6AD63C4332F
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 05:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167246408742.19777.1013872724237363668.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 686f734e5e42d7214dc024efc44ae334b3940a8217f1117c51826e22ce43adee
Date: Sat, 31 Dec 2022 05:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672464087
