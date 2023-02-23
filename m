Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34AE57E
	for <ddprobe@lists.linux.dev>; Thu, 23 Feb 2023 19:15:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6B3FC433D2
	for <ddprobe@lists.linux.dev>; Thu, 23 Feb 2023 19:15:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677179705;
	bh=7onI+JTpKo9tyUKP2HZ8Zkf4lW5XPu7woM306ArOOLg=;
	h=To:Subject:From:Date:From;
	b=Z1ahJRJZ3bIo4QC1abrHb8SJFhSJaY03ZR78TgPfMQMvgMljJhiIa9ad6VZi3EBnG
	 maxVXKq/1fixjBCw0L1AvS7Sk7PJSD7JdAHn7d3oCNuGXY0qaYlZ2aaVD1giBZCRAL
	 /F1Uw5ipol5Thw/7+sBE3oGiTPHTnA+2GBCa5NZ5hIlcpnXvDuucIrRj6vVhPDe7wv
	 bslhTuQz0KuxeNlTmn5nRPNSp/cC+kks4Fd+cgIbgNAnyZUQ4N0rYQVwQjCwpuTxGg
	 Uopv7GCjR0zEIZXNT7G3SPArJQC82B+mOeo+b+J86u/NUXSrL+LTwZ0lJJ0cZjLIHV
	 N/Mfc2hyvUtkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7DE4C61DA4
	for <ddprobe@lists.linux.dev>; Thu, 23 Feb 2023 19:15:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167717970573.5510.13242653754473453318.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3538b0e9654322bf2e952b2c57be1b3010a3fe48b0fdddf1afc25b5c1fc4f0e
Date: Thu, 23 Feb 2023 19:15:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677179705
