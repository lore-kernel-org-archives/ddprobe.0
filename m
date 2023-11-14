Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF63511C81
	for <ddprobe@lists.linux.dev>; Tue, 14 Nov 2023 07:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WElhcwGC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86277C433C7
	for <ddprobe@lists.linux.dev>; Tue, 14 Nov 2023 07:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699946896;
	bh=RoTdafxQqZ1vAcWjG7w+rqwhsTru6F8PNVSTPXInuEo=;
	h=To:Subject:From:Date:From;
	b=WElhcwGCz2+uIjWaC61PsMYRh8tbCT8PsLh3GDu4CpMnBel/+kHrTuR3mjWI1snyd
	 NJ7Wk662NNHJo2mX7taVXJ4YjyhcJhHP9iErgau5N81XQw4j4cgRViIc+hrarkMsaV
	 TcfLXKmvVMTiLT19g7VAFKWoYpgUp9Y0N9q9vEXzdzF5ZwaGOqaF46utqsVZDYMqzf
	 s+cplAUhVlgwk+4z/x/P/qr03LTeSjT13z4aDsfTlH2v7mxnOVdtFBiY/vSHGQ54cn
	 COoAo6z3SFo1rcjvlhk88Dw1hkI0MUZAoLpuusl6iRnbbEowM7SCqUjog2bTviihAh
	 4UekU2GoXVq2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67B09C4332F
	for <ddprobe@lists.linux.dev>; Tue, 14 Nov 2023 07:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169994689641.8600.6650994447322497381.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c360deb9f1d0d9f5f49ce4325bfeca1b3525acf47478e42e9cbe807a8ff48ce3
Date: Tue, 14 Nov 2023 07:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699946896
