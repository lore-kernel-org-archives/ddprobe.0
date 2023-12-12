Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00CE3199D1
	for <ddprobe@lists.linux.dev>; Tue, 12 Dec 2023 08:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VB2OHvtU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7826EC433C7
	for <ddprobe@lists.linux.dev>; Tue, 12 Dec 2023 08:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702370896;
	bh=4faTss3XC8mscksr6mWRlZtKyd9AE37AFUxoIOMkpaw=;
	h=To:Subject:From:Date:From;
	b=VB2OHvtUEMpz0tMclQAAzd0qMR19QNbT6XJ8KnGVdv3XoZ+OI54bXEk09A5q4N1SE
	 XYVMijQBGI/2kseQD10K2+1dlk1V/oQrDMPF/blv/eT7aN1m4CunUCJBU7aVOsaaI1
	 q51+JThEQ/QiW44yBAurpKxY3dv4rPy09F+/DOUdgHl1XGp0ptffNUJYtZHmS5bBIM
	 BCqxxFm534fc6uNBgq415JokVGovrOFkOawPjsgTB+h4K9unXpP+/ykUoWgaxM177B
	 Vg8YsVoQo8cF2Y8CEFrHSSP2xsFc8sH9GO/0IgN7k2WsmD6B66bsCKJ68lGRbCIvCC
	 uShQ2ds/JdV8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D236C4167B
	for <ddprobe@lists.linux.dev>; Tue, 12 Dec 2023 08:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170237089637.18369.9876850806136165323.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aaeeeb66301bf8af388a3971389413594b1d231bc113660b523c1d611c2fcf85
Date: Tue, 12 Dec 2023 08:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702370896
