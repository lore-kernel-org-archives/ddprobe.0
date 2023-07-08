Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 587891FA1
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 07:57:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD5EBC433C7
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 07:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688803028;
	bh=SmCbxSH5wbC9NuKJgIxi2dJkkbTM2ligFOUgI2PNTMg=;
	h=To:Subject:From:Date:From;
	b=Gx68yk70Xy5EsjQHioTrSQ95r2imxy4lZyC4qKez37pNlp/6SGUUbnHvcIAwMIXiq
	 Oajk1QtHu7aSrdNeI33jOxOs76UZKZYSS0ortvW9DYFVtk1RYoAx23aJ0UMxeAnVl7
	 hEANfHb1mPC5kbt/DVBXZI0kBzCJmk1m38W1wT80dFzLhl6o5Sj0gmec6BITQRf5da
	 sM+rNFmePRQaVLyavsyCg8XpvYnVp/3hoJSCHk+rNOQhsbHah9Snoz1HoAgCqz1/FS
	 +626ozymHwjELU/BJ2/0njnnsfbKQtOervTyIBQluy6+lJva8iToSor32S3rLhNA67
	 ey8n+95EVcavQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE190EB64DA
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 07:57:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168880302867.5767.3260066574550627405.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3db31d484e777f6f47227e088c10d22fbd026f5d0bc9429f71148e1060d4112
Date: Sat, 08 Jul 2023 07:57:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688803028
