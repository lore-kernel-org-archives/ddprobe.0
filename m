Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9E5B23AE
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 07:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D239C433D2
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 07:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671694887;
	bh=Qqf0TqRREYpBeYNf3O2A1fEkOy/fBVB9Wsq0SVgM0wg=;
	h=To:Subject:From:Date:From;
	b=tMtkqbz/oNRJFfiWb5wDn3Lx57X/hGSh1ZyIGgg6tXtI0gkSGZTYshMQP0IC24g3z
	 jkQa8dtooIaA79fdZnk/ZtGhD3+0h8THPh0+d5jTBDowNV7hJn9DBx7IKvOq5etgBV
	 8ykpuf5gPgIVcLXZqYqBWtOKsv12ml08wW6D0phIzDh7h5LATVV10t2Xg4j17kvf71
	 VCJNhMlczx6i8/x3bJs4pZTsmtffng7+OnguMAfG+plXSRxHofi8s1UYvvrzDCtt31
	 YPkBPy9bzn77gU4UwlY1anhxIbFdoVqPlqQAuqRt+2yzrLfv6IufMDirUjS1vaD1ne
	 YEgfb02xeSvGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61C21C4332F
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 07:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167169488739.2550.10416059307334665232.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a638ad3b6458325d9bd354767cdd3350904e240c90389691fc1c2522b227fa4d
Date: Thu, 22 Dec 2022 07:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671694887
