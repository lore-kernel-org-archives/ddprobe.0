Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A9E710E6
	for <ddprobe@lists.linux.dev>; Sun,  8 Oct 2023 01:37:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vfzl3dTk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3938C433C7
	for <ddprobe@lists.linux.dev>; Sun,  8 Oct 2023 01:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696729028;
	bh=rnF0TmU0Ycy4LbeBwUQFdm1cKfgvX1WShZlSecPBwaU=;
	h=To:Subject:From:Date:From;
	b=Vfzl3dTkpaIwVxjmIJ1IyICBfAFePMR2TPP8miL8haBINtVEOTRnsCqcaDUFC7+VV
	 rFCWWjf1Q/uPf6N5zNLZln7EFXVScDfTz5HejpeFCkuw4nepvijFHHLu5fHURNeyqr
	 JyRdWlS0Y5A6EhoUPQy6DwZse2rxRmGWUFzZwtOtoywBUtGWffU8JgrCjNRVpoHoAj
	 z71g8GaywtIEQ7IoMuyev2az6UioxJ3zDfHeFtipN37MzIyFRh+9T/imJWZ1rgLxYQ
	 wnUPNJIBEaQc+kfA8URO8GxUTNfR5edDDixc6bDhrPx7l5kpwosvPQE8iP4mdDljNl
	 iP7B22KGoPGEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADB18E95A86
	for <ddprobe@lists.linux.dev>; Sun,  8 Oct 2023 01:37:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169672902869.853.17795524097884086601.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be9b580237980130c4e591bc93f4e167ad6c589a89db7534fb9212261dac7e89
Date: Sun, 08 Oct 2023 01:37:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696729028
