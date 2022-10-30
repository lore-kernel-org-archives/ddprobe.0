Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E07BF3208
	for <ddprobe@lists.linux.dev>; Sun, 30 Oct 2022 18:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79EAFC433D6
	for <ddprobe@lists.linux.dev>; Sun, 30 Oct 2022 18:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667154654;
	bh=tNlufF0J9hiXqA24hQV2Eg+2TcIe9EyxMSq8Ja6rxVg=;
	h=To:Subject:From:Date:From;
	b=tRPg0p/Gl7uFCBuVvaQPUpM6lipM3V7Kh4Ifc5ijRtIzscor0pWJ0wkftyDaXYgSu
	 lTCGP0a1NUajt8FiUCvO5Fi2VpF1UpC857zv8FYYEh96apL9uwHi6r2HRja9PI0Xpa
	 Sr+/5odGnE21nRnj1ekZkskCCa8J688uBhRh0ShBfBVBoqLaabEomfI7wiP/sH080d
	 k5p+BBz9oIu4E9J6MreIfrlteoHa2CdyeYmf9cGJ9k2tmTRwvdqXqieWd1VW5K7lvE
	 WAe1HTqK6Fs9vqQiBcLc9GN3YQNjk7hAJNeyF4Q9FiBxJdKYaOwPYHJ9024TnYbUlI
	 FHxVG0d3uJkrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6025FC38A02
	for <ddprobe@lists.linux.dev>; Sun, 30 Oct 2022 18:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166715465434.11515.14722693915793494565.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc46a0f1f2ef941ee54ea3b4cebc21e76c8722276424843f5730c7426aae9a73
Date: Sun, 30 Oct 2022 18:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667154654
