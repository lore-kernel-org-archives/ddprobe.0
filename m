Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1A891FB2
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 06:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6AC03C433C1
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 06:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670047254;
	bh=TpgLGa4PH2LYcnJhA9LxJxlC5KxeTn8UVfqmZUIZcfY=;
	h=To:Subject:From:Date:From;
	b=QBC/Jly7Vq1y/l62QxvIwXk5kPV4/PQ+Jx8p7/ySJwdW/C7NCbJGeebT0cyusdaMs
	 dUZf6n0kcY5kxH/FlghR0l/T3hZYVfBN8+qUwJoDDwZjgLCbgRqjyocqiuSoi242Jz
	 kcwdMJPo4/z9No+IChnZSw35DM4a9vG8gIDjifOpYCBgowxbzuzbeTNBXlrmfDKcF5
	 quJamLSMTCjnvSoGv8GUA1q8sVAqb19CxXPzgvAyhWpfv6i0PuqTPgeywJ5E1P3wVy
	 uSCIh8BFQ/jwoDBi3PL3VMe+0F/dX/lQoed8W27kbcL5gOI3POS7Bn5Q5F2juiSC6B
	 0VjJx+NrXzO/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F034C352A1
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 06:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167004725431.6269.10366563526713712016.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b6077c9edb56fae2d6dee3c855cb98e3fd997d14fd37175970045b9e8d959c3
Date: Sat, 03 Dec 2022 06:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670047254
