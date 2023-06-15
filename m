Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A184B2E0D8
	for <ddprobe@lists.linux.dev>; Thu, 15 Jun 2023 17:49:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 07DA2C433C8
	for <ddprobe@lists.linux.dev>; Thu, 15 Jun 2023 17:49:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686851349;
	bh=qs/Krps5LSxBRlNSt3SqS3cvBVwKBfZlB+q+BUKSG/s=;
	h=To:Subject:From:Date:From;
	b=mwx16+8QwyYJ9JWvA8flAoKe7hEBwbE2WnGsMhC6nhYI+R1j5F/tGxPTGsQskjhxs
	 KZYjlLwo9cHIPzx3/DO8Hg9Kuipuic7lpR1PTMkwyKH1snJ5GOe27paED23Yb2xO9y
	 J0ERxa/ULfFyjCcAUdvHaMf4joYIsD8fe22CLbbWqMkkVF1+eTy58FgpKYY9aYRKdY
	 uUTveQY32D9lha52u8NW6TsNS8Cz0jkxaNeFREmU5rIGf+iSEw/6Rk+sUBst6Zxgu2
	 0K2FOHrYdBPLMQrN5Nisfl4n209yvfVQmtcq+/l60RCHxsM3YE1YA1VxD69JeCjLIo
	 SuRqe9pU554gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD5FEEB64DA
	for <ddprobe@lists.linux.dev>; Thu, 15 Jun 2023 17:49:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168685134882.3195.13742179941926849216.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0ef069ed06dd9ba5bf53d18cc613489786da1a59e3db1fbdc68ddefaeb71f08
Date: Thu, 15 Jun 2023 17:49:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686851348
