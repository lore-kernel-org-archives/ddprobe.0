Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0ED82563
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 09:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id A61A8C433F0
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 09:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671699687;
	bh=9qMfSVdu2H2m8SQgPzxchy/ugdW8Qy2ODav4DlJbNZU=;
	h=To:Subject:From:Date:From;
	b=F8eKPPh/EWbSN9eJevT2HSIFuADa09KGk+UyK0zA9zzHZmTe56GqtZWZa3POKZwcK
	 hbH7KHWyXIi7ZYOP6A7YBRIqwl6ctETgsGSACuq1ZAMWvYMmwHo5bem42UYjpaLSzX
	 3/XsG9Nxau1N9pw1MOFpLiuvXl9N5k+ZjiutNb1hYbhF0wDkXJghblHVBfXEENv90A
	 exiFFdd1Y6dei3mBqzBnL4u70qwpjwLvfQrwetGFvFGEltdaun3Mn6+m3GrNaa366+
	 sT0Vi9+FL1iFE/BAR5Xy1WD7mTMIzDARur/MLjESB2uCE+L1ADWbjS8nuPZpO0g4fd
	 IQeDX+I1tGcnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 89352C001B2
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 09:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167169968755.28715.17465703283786648336.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8dd7690d92f025fd4724035a583a37e8b3a6166af0428f49a9f368776d32d75c
Date: Thu, 22 Dec 2022 09:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671699687
