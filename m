Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFA1B4C8E
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 19:30:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6BD20C433C1
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 19:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670009455;
	bh=qLy6BGMz4ddQFxiEh2Yj8WmGRBiD63J4AzoVqN8pYxQ=;
	h=To:Subject:From:Date:From;
	b=LeVlERSxRk5+OIrX2YNDqpOZo9++h272sGdEETnFn/C/N5Fa3GBYNt+Xp/CHLf83n
	 41REMvWV2HS2gwxmkwdrre7MembsJx8Jvfmc8qMq4/HkNACDwnoQPCk177UwlBXqvy
	 uZn58aXE2x3b4vAn1BX45I3ycOTL4wYRkbfxYdECZGR2fltf6h3K3MS3ddph1lXz3z
	 Xo/1L3KZGFkJxOo1cLB7Et621gKkB1Clm1gixa+lY861EdBXQ9cG74/dulGsVVB0Yl
	 uWuAGEawyNyMb2Z/RvxwHJvITB/SCBBTFHwhJfuJaDmBIivUGPOyhi1KN5/1rH9Qx1
	 ATuZZ+lAejIEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4FDFBC4332F
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 19:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167000945431.5437.5613646288252427223.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 555e9b567f85bfd9b4ea1f0e56679a1740a6eb17da92fe83f3416d20e809802d
Date: Fri, 02 Dec 2022 19:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670009454
