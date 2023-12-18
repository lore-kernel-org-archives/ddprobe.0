Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16DBB63A3
	for <ddprobe@lists.linux.dev>; Mon, 18 Dec 2023 05:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HaDn+tn9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BE23C433C8
	for <ddprobe@lists.linux.dev>; Mon, 18 Dec 2023 05:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702877296;
	bh=VyOfJh+kKRurMyc+W4HWwYatq6Omoq1FaaXDnjXL7iI=;
	h=To:Subject:From:Date:From;
	b=HaDn+tn9cjS296Kr2rBrnlUXxkuC9pRKglz0MOFn2f/5fYdqMH313tFCtchY6SIBE
	 od6JP1LeGYHQBjK4fvHHrWXq/ixgKz71DBh9cgP7Dl/ajTVgTvsrqxYIxF0RegnNmA
	 Q/nvNu2Seg2zQfss0mumfKGkkMDkE+ra1CQvFOQ8fmfHJ4PfcM+bIGS2bpomNH3PCh
	 wQSHjg/D2GN21ZeQjXnrMsdMwyZGbinHPhDZ6rp1Q2+4OK4iR/nzVBdCNTWirH56uZ
	 taAR6cw/NXNfbeYpzGNIHxKvES54Bdoi3+U8PWt3y3gdAudbw472TJD9TTTzRQMjC6
	 iA76AhlBBq37A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5EDBFC35274
	for <ddprobe@lists.linux.dev>; Mon, 18 Dec 2023 05:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170287729636.8277.1181626509127568432.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba7b43c65a8874bba142b376eccceaa1eb96ed27a720e078d9b28eea7db14ba5
Date: Mon, 18 Dec 2023 05:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702877296
