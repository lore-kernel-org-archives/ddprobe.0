Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A33720307
	for <ddprobe@lists.linux.dev>; Mon,  9 Oct 2023 23:07:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JpW2IbHN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEF22C433C7
	for <ddprobe@lists.linux.dev>; Mon,  9 Oct 2023 23:07:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696892828;
	bh=ZamLtwqDTj1uEvUqBoW3FWiHVMMXfHpbx6VCD3SffU0=;
	h=To:Subject:From:Date:From;
	b=JpW2IbHNs2Sjg7ia2dnaGVQ4f2+WIfcjikMg6b9eje+dnoHfBOOjQBC374Ketd3/t
	 9pnA5Eu06heXPB/dCVumh+CLGqWWz7HPWsX8OKu/pyeDyP3UHk5Xsz9NbMn6LfVI9N
	 ahU93BpVGXipIICEnxL0jRXazPX4oi/uspDAagLvrv5oQnYjzSECKasDH3RR/hNGa5
	 S/YLt8FOXe9xvPMskH40z4f1cKCdUTkhlKR051xB1k2bHkK9tqeG0khF6gIImLYrC2
	 MklslnQpGhr50/yB23rPY6I2cfaW2Xl89gorD3dAdSUpTlXYbXZhI3Ecl6N5mCo5TF
	 Xeo8yie4OW/tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA008E81E18
	for <ddprobe@lists.linux.dev>; Mon,  9 Oct 2023 23:07:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169689282868.14301.11450275565941505402.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 566afb2459ab09569ca7101812c8cb73f930b5acf96667e2f78465004be2a673
Date: Mon, 09 Oct 2023 23:07:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696892828
