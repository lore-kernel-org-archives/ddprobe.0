Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D01D81108
	for <ddprobe@lists.linux.dev>; Sat,  3 Sep 2022 05:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7AAB1C433D6
	for <ddprobe@lists.linux.dev>; Sat,  3 Sep 2022 05:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662181253;
	bh=uDWpTKIBGSg3EH95Jn54mXbKH2ZA6+gM6BBFMMDiA70=;
	h=To:Subject:From:Date:From;
	b=aIQNX6cCocQS4GFu2AoS0nypOpmtKjoJspLlACtW9+ZWl2j58WpIDIIHQAhTo5VDA
	 PuD/vFGJYIVvVT4Ul6O9oeZBeBEMSm/2JyjMS1dsANhV3jSA7KpAnzgs7P5iI8GW0u
	 3m7flpgwOOEDPHaYuEq0RgkULZ7T3+53nEUkC6KReUw2f8p5dvYF65mp2Tj0BXo41d
	 HMSAX99x9QdKh4uFeJG3szMrR6q83LF9zT4Qf5XqusmRNsFCEwMuCggUK45e6CiZtc
	 ypr4vsc26vVomMtf8+uyOKtsUJGZkvnb0ODxzms4xsrX28uIEUx/2EuhYToBRJcRaS
	 lNslRi/Ieu8eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C219ECAAD4
	for <ddprobe@lists.linux.dev>; Sat,  3 Sep 2022 05:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166218125333.7259.17885139008082775779.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8392286eebbf33166ca843037f3c276fcf57276d2fdfec336488dbee79fb092
Date: Sat, 03 Sep 2022 05:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662181253
