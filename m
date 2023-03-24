Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DBFA7E
	for <ddprobe@lists.linux.dev>; Fri, 24 Mar 2023 07:21:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDCFFC433EF
	for <ddprobe@lists.linux.dev>; Fri, 24 Mar 2023 07:21:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679642465;
	bh=vma+Gzr6Hr/0zd1ATErQEnKKNwjgEVFRps5yEIhdx+4=;
	h=To:Subject:From:Date:From;
	b=n1e5UjMsiBLcEMDERmHvbwXNE9/f5a8XwykjCLiqGZYZ3/6sJSRYvBdfmW1QhSnBF
	 QeyfIGpDYtuu9GCr9znqI+PZXo3mdb6JS7ek0M7k8d4yZ5RwbE/uT2/v3wxh5WFePt
	 JjACyonVDRRmXm+MR9zxdNYvQX9hWwUytM6wrljICZwbjLOSKNDVZ0ugZImPyICequ
	 fImKXpx48e/5McfqkG0cMkGTFSHGIckhnozfFW5TI7090Faif5sPuHcMhnrsRnupV5
	 nVHQiyd9O0FVAfvVJ1lgy9E7Gp2bi1CaZJMjjcFlyo4YG4O6WwAEZh95l2OolX+fT3
	 ktMgsPfBwyo0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE538C6FD1C
	for <ddprobe@lists.linux.dev>; Fri, 24 Mar 2023 07:21:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167964246575.16794.10332669210809544267.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce9730c5d38ee9c9244d46c2a7c9692db00636a3e377a1848fbc390ca472cc54
Date: Fri, 24 Mar 2023 07:21:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679642465
