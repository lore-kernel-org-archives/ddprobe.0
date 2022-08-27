Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C652715A3
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 02:50:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 719B3C433D6
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 02:50:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661568652;
	bh=C7I6mB9ktoSXeZwa1J+BI3OvGLa0cBR+VQz2sHsC1RQ=;
	h=To:Subject:From:Date:From;
	b=bm6R7qsvtMFPFCK3Kz4p3+yRxJ1pso+emSJ4CkgcXqmsMSVc8/qHWi95w3d6/K84U
	 i0xr+rmW+6DZ0RsRO3CXMYIxv3OEj5us7sfjr+9V+ucbMXk/l4xWCkE8yjXlOMlFog
	 +Zq240dzV5jb9E3x7gs7J9xdNW8Tpa5zhDGhhNddFb2tPNnKAqW0VM9FtXLq4PgUO1
	 FgzIzjtMP3wre3bmZh7HBAeBNs0I92UEUSA2X8GVpaaVSJk9uCT43ScfEo+BnmHsD5
	 jSQVEOB9FzpzxUPpdSWO3py4UAiYEmjjbkdG/WX4f/jf8PlwtYaLERJW1MyKPxtm+4
	 8lp2KqiebDY2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5AC9DECAAD4
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 02:50:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166156865236.29073.6352852110382166149.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88370c32000c4c8e68c6cfe94d92b40f88215d1f9031cd92d2e5bda2b9b75529
Date: Sat, 27 Aug 2022 02:50:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661568652
