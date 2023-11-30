Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 105E911C9B
	for <ddprobe@lists.linux.dev>; Thu, 30 Nov 2023 04:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aKDoBwUT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82061C433C7
	for <ddprobe@lists.linux.dev>; Thu, 30 Nov 2023 04:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701318496;
	bh=F3uBdU3r7tbb/ZeIMHrUeAzuMElXtrEVou/zOVjgkpw=;
	h=To:Subject:From:Date:From;
	b=aKDoBwUTVEr9jCAVvQzdkvO1ikzDkIz4BqSofUwICb0juDgV8DJE4w5/e5bH72dy9
	 TjC74KylKZJuEUIiKNiP9ydBvRxUZyhwozDT8ILkL9Iv6sdS7UeHgYMUPFMzuQQAfi
	 sQ2lBeovhlVsHL6Sd+Mp/XQeRtfO8Ad30yhWUSM/j3v4HMXkH5luEeZLFggilDoEOU
	 xifNZZFKgGx+5mMVQXt6fhW3yM+h+dCq++slT2vLTpDwJ6N2AqNhPZk0JWMZwcf7GD
	 CZtpo558dewJ5ROSMdoBiShjwmSpF6NIDXmqh749FEQN1zdjTj7IvFAdlgUlJJA3WT
	 7TOaGrsarNelg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60289C4167B
	for <ddprobe@lists.linux.dev>; Thu, 30 Nov 2023 04:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170131849637.16606.8815366047290662821.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc8911ae5b6cf9e175c128cc546bbd9a3af6416110f95dfd5d328117b142c256
Date: Thu, 30 Nov 2023 04:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701318496
