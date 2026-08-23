Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47F572F7EE7
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 11:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787484634; cv=none; b=CYlv2x4sVIJ5hAU7TjrsPeTdOpXxTPZwOXUZfVUvZrJIzfRxl8srR+LXNebHoh1lrD9w6Q1YklykuiGCc3veIhJ/y3o88peqsnbhOdH4AzShNpe748EL6P+hHRDeWh59yZK/nWHY3y0Z+6ZkQ1vfsG1bArpj1zGkyZx94ixgzls=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787484634; c=relaxed/simple;
	bh=UeSnwaFZvspxeG46EXoXP5aV+WBiCSnBiDOUr4y7GyM=;
	h=To:Subject:From:Message-Id:Date; b=iSB4n5jRoRUVmL/xGelEehirVjE0/n1BZg0QaXlNqrU6IKDnDVhVyDl6+5vTIrPZkbH6DJVecD5bFBngVFI7Y/BAiRfQwGg4Z5EgxxVw6IQCCG3R2CMeikjSwqofjHice+Z75utZ9jQ1EYd3imujLQkemS0NYLgPuSdZX/t+NJg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GZVYKB3q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GZVYKB3q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDAE7C2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 11:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787484633;
	bh=UeSnwaFZvspxeG46EXoXP5aV+WBiCSnBiDOUr4y7GyM=;
	h=To:Subject:From:Date:From;
	b=GZVYKB3qALzx2uBMGZ5XX+hgDgfx3JMvt7Rbr3G8GCkprdJ/mpQv5BJz/ge/a4xHU
	 MpnhHeU0j70hPaiEu1gn7WjQw/BPvaOw5UQhsdkWl5ipMt6nAb4dVjGGE/y4UaMTh6
	 IxTdzMkybSzoSquzNh8h84PivmUpYgHEgTtfPMpfpUfVExNAm1wHXzgH1jTDb0vn3l
	 /mc+zj+w73rxsos8/sThUNW/juWQ6eFoG5Sxoo+weYjBheuQPQWzV0DiNv3Lq1vaOw
	 p2ZJtBzeDSSpsn0YKgqj9Z0ysf3OVbv1SWzc3Jf9PxZyb8Rkrftdn1+GXk1Gr5mxIg
	 FR7UxxDqIlG0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAFB4C5DF8C
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 11:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178748463369.5581.5936383095952852503.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 152bb632778bce46c0b2aedf3b883b479521ede371eb7cea670ba2ee314198c1
Date: Sun, 23 Aug 2026 11:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787484633
