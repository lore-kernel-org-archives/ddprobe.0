Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF48E644
	for <ddprobe@lists.linux.dev>; Tue,  5 Dec 2023 08:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iEMKMLYV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83447C433C8
	for <ddprobe@lists.linux.dev>; Tue,  5 Dec 2023 08:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701763696;
	bh=oCzeCxojsBT9Zr/7+dWYqa+Wo8WaN/z7s44GdeyorRU=;
	h=To:Subject:From:Date:From;
	b=iEMKMLYVzjPr4oFkiosmpHq6iYQsHbuFb7MGNa/aL69DCT1yldQ66mCUvvCq1z+ji
	 pykTIQL4MbkVC84GdVOKBFYNUdUe0jJw8I8Rg8d7q4DV5Vnmkco8ZiOPl+DVjd5+Od
	 B110Ro+TIFUHTCUR+eV3eVCnAT03rtusu3ueCF0+oNyPFM7zJHinfnHCwkqTreF2gb
	 Dvtqk2vAdTCYGObXuOnjjrPHU7QPgIh4sVox18P6bVW2JtkvizRXP9lGtQxfzUX36N
	 ZvAMLijP49rZjMR9/aVPkXgNOh773cd3+ct6a4La2NTSy+ostcVfPlCMG30ce3BAfS
	 dlMzNV68kBVZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67873C4167B
	for <ddprobe@lists.linux.dev>; Tue,  5 Dec 2023 08:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170176369640.15688.4728890877747481072.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ab7daa2980d4bb96274f2a5f2f1d3d15fc15ff18e528e8adb3ee660807b5021
Date: Tue, 05 Dec 2023 08:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701763696
