Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5443717A2EC
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743370795; cv=none; b=P5+0YvL0xYWvFBTFsni3Lrz5gnzwkuc3RZxfk7TOKvXixJtjOKDHOo4nW0wM0qktg93DqWL/IL+Sax3RekEmVcHLosGToo259BB6DlRlTerDCXm48iOMzT9VtmkBagxBKuDVLFJk3QaskO8Q1om1IydK4vnkWp8c8aWhdWR8GyE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743370795; c=relaxed/simple;
	bh=cWoVtzhU3VQM8hknEJN8xl5w1r6Kv5wdg8LIax6cTLI=;
	h=To:Subject:From:Message-Id:Date; b=F+mjqJLKyNr+WAj8qJTiZRpt655J7KYku6yvQyZIkDYMC5gWHpPjFSXGisT+75sVIaAYN7822gm/ds3z8tRIA9qOW7q2Bg5ULZ9IzS+KNcU4olYJLR6WhqisAzQ+jLfY/EG+Gv7HpA9bJSKQeY5TDcwS9WfoxOQYjXukY61EqHQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qOsEjzsl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qOsEjzsl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2317C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743370793;
	bh=cWoVtzhU3VQM8hknEJN8xl5w1r6Kv5wdg8LIax6cTLI=;
	h=To:Subject:From:Date:From;
	b=qOsEjzslX4RCJqkRb7NGlBB16m5NBqQdflDDKQ2tpg930uUe3gE1XPhAfdLNFfIn9
	 GGnN5MuI6RmyryKGhiZmb32fwPJRDydLkC2IiUADtGT/uIA5s8uofUc8YWHjI7T4Tm
	 zRCs5kYfryZXwhMadQrxNSRg/Q5ocuvc6O76G+X25Q+056Qfm6jdCnfINAWjUoo0V7
	 VDVDWCE+qULWffhlcCamXrPj5eVBztN3R4XEuNs2E9BnmpgUJ//hX773IhodDz1pUb
	 VEuI+NzayzswG+4S3zKwL0T2EA5hWp/ah4azXToRApUNgkx5kfoGrVXGqnoDWAVX61
	 mEu+ixIItme1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98119C28B20
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174337079361.10242.14883973104335036527.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d09be30145e38b5c8289fb52f0c029f108216027550f5d82457ffc261e136f0d
Date: Sun, 30 Mar 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743370793
