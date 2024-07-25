Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 239DD1EB27
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 22:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721945754; cv=none; b=XX5T0Vn/zwGVgwitTuLoU0bfn4AKBD/pNiKpxZr+7pjoI++gADsiELIZjuwt1IT+0LAWrr9blAm2FgfUCPcG7/AgB/fOcBzlJEjRqeZJs76HkBPX2M0PmbivczH+urTN1/DCVP1b+AAzaOaTqiAxeysQ3aU0brdtQp+bPbf7I+8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721945754; c=relaxed/simple;
	bh=+00cIXP9yUfZBD85r/emWZsg9titaBYc2mJqdYEPeWw=;
	h=To:Subject:From:Message-Id:Date; b=MkX3EqWNxkDZK3izcjiVg44y6CNwKVZ4lP0IT5oj0lZ2iHvxq+4RnyZd5+O7piqi57Cmc2YV9COlqZZk24GDVB/6pLyOuNS2NG6mVhp/RtJP5kE072bDABZpzfQ90AmZ5ddEIVZp7QfE6pcuR9Q4W8TZgWwu++6L/mkBDIQzp8s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ou2NIM8/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ou2NIM8/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B802EC116B1
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 22:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721945753;
	bh=+00cIXP9yUfZBD85r/emWZsg9titaBYc2mJqdYEPeWw=;
	h=To:Subject:From:Date:From;
	b=ou2NIM8/1nq9NxQDVuhQV5gIoPrWPvJyg+NDGJOYlXk0JjSbmaNam6SBF9tbBzKrr
	 tjKhDqZV4PO3bGgAJZlKRrJukDmRYXjrdS1G+3rQQ7XYgI6ZtnFiP+A1HrBQjxoD/a
	 pGL+Skyv2Bbc6srY9OqROPWcYbDSJ9BCURnHfA4q+YTsBvTL/jRxBQAinX7wRsU43J
	 ApzFSH5M4/unNjmWi3i/GfvdvgHidxoBG5qZuI4r2b2cSWAVLlvgDs/YePNOwTtGIF
	 DFM16/6pwBXb6rmt8hcPEVeRQ0RvnhZaZxeRLQ3lP/LSDcbHMZiTIeBDMngq19gZ80
	 KBXNukXaMfzbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A62F4C3DA49
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 22:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172194575364.29568.10020865890324593605.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72d7fa3ff9c3d3d46e7783c4d4ddc45b502470eeee04b7aae689e44063f21c75
Date: Thu, 25 Jul 2024 22:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721945753
