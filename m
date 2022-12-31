Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6D7B2C9C
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 19:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84B72C433EF
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 19:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672513887;
	bh=LSwtxULkbdQGrkSBc/FLOoSXpZh/zIY7S+Cjn/MRlEw=;
	h=To:Subject:From:Date:From;
	b=fjmMQ44sl2+6dLnnWqPUyhQLoH77V7USX/kB8hAO2yp2cXhe0spmXkv+n+F2xn7yH
	 SPaBfkycU2ekCzr6GRDEVdajivXwcjyCd7of0WXCjluKSEpKcvAm6t/6oOZaWjPV/O
	 QFw2S3MTUPd2f6VBxBIPjpgY6jMtUh2opA7n2BQOx2UhZHDQ0Dg9auX87todDmrpi5
	 j+ZDByH0tyKe91ZA4XWSuWn8KHgbdES4JLEvelsxjdBXsd8O9XosNhNB/ko2AK3gj/
	 KyqR2LkNPclDLCL2rMe5k7iBwYtjxfn61f27XRtoBECXBeFc84BfnspyjdOhfKJ0+S
	 f/nNAvd+4sIMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69330C4332F
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 19:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167251388739.12500.16815493613223590426.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9b121e66f1e9032e053fe338c7c52560ecabdc68dcd8aee7d4e6bb367ea2a97
Date: Sat, 31 Dec 2022 19:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672513887
