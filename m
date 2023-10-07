Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77305168AB
	for <ddprobe@lists.linux.dev>; Sat,  7 Oct 2023 08:27:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GwY97pLu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAD7FC433C7
	for <ddprobe@lists.linux.dev>; Sat,  7 Oct 2023 08:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696667228;
	bh=e6oE/5ILJBJk0quWoG9AylML4scb4zeI+tbfnOh633A=;
	h=To:Subject:From:Date:From;
	b=GwY97pLuaBYkCJ4Z1iYtSa6SOJ3EfEiTTKXHTGL49OwymgL7IcCmLPRDiFU0DTyxe
	 AukDgjLKEIHFLkncRnfPUoXbKAW/8ZPYzD2qd0oMlwSdYbyzxIWwTMALm26nxRP6p+
	 9py76FgEwO18vGxzAxcfGfCv4FT8s/G+QlQsdKlBMVkg5z7SruLaWmenFHqcXJPMKM
	 35antnwFyXdQO7apVVePsPNUYBvbtSw/B4w0V9xG71xLnv/ZNlyQXL/JxoRptDAgpb
	 2pdTdxNP+IFw8d6mls+Y8xo7b6X4+e56ve2Iin9xSGK6+dhLBGBLZiDOC7IuS8dViD
	 G0tX+Ccuq9Kfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE094E9371B
	for <ddprobe@lists.linux.dev>; Sat,  7 Oct 2023 08:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169666722872.6564.9047469604450393831.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f3d45932aac2759ec9802b212f5ccc12b0472bbff376e6bba7a0a51043c1d9c
Date: Sat, 07 Oct 2023 08:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696667228
