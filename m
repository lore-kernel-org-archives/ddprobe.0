Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C84CE2F27
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 14:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A593C433EF
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 14:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672929687;
	bh=cG8zX6A6De296EgaBrnescgC+sTAfWevK7DwCxny4O0=;
	h=To:Subject:From:Date:From;
	b=jvS5nYE5c5xkYUE1CcPZSJFgN1APaE1uiUIjdNFCs9sZl5mO2F8qlCtohKwgMJrf8
	 dN0fyPxrR8JHiec0TScwR0Aj2LAIHSmXygBydz2b0EXwMybMuPUif5jgC/9WrN0j8x
	 wImgCItF8jLx6CvFCuEGnM/WDhDEdIDP438Bk5yPH5rxD8PI+FYAO858xOdMnjPLUJ
	 wlvQ7xcmAYfwS7Dfy6PAMdQMfy89R9omPnMWAI+lBbvkaW7Kj4R4HtiNOF+gRZWVx4
	 kQHwY4Rt1gybjhgrUr6EvaQj5BX34f0lj4AO5dPPBmsEt3XtpjbbdN5vmlePU2Cs7q
	 61q7HfvqBjAGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E715C3DA7D
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 14:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167292968738.28976.18065817979029547697.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbeaa53de1f47e35a375c4a8d0791a88eb37439ac40f6e12aee6f14f47a8fe1c
Date: Thu, 05 Jan 2023 14:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672929687
