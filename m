Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F21B8365
	for <ddprobe@lists.linux.dev>; Fri, 10 Nov 2023 02:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gCY71GGl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85331C433C8
	for <ddprobe@lists.linux.dev>; Fri, 10 Nov 2023 02:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699583896;
	bh=ihdB4fyYZMIeWTY2h8Y/89YPyVLQ4L5BeluDsiqD3a0=;
	h=To:Subject:From:Date:From;
	b=gCY71GGlH9E/HlZNV4Sp8HNi8vx+0cSf7oanAEKUI8HI/sD7O9d3KQApZvYTbzm9q
	 Ea2ZBdLU+Kr/vSmv3z6BOajUeI8PGNULTOn2T6jxNIthKJcZ2oXyuD9C6OohetuOti
	 pYrV7ch01OHv8s2ZcDHvBW1aWMSf4fhYNcDrnw8PW8yK40+1B9csu9NIXjuGtPSX6C
	 TUFKgGkLVWb634nFLljScAnZ/gpaD4hISjs/N1pgVdZqp2Dt1vOUBC3GOTKjVCZBSV
	 axpVOs6Vx3L/yMpgnF2MM4ASXt7obKnAADDnJG2f85q/Cd10MqXY9BtwURZX58uh5b
	 jarVuM+/8Ip0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C847C4332F
	for <ddprobe@lists.linux.dev>; Fri, 10 Nov 2023 02:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169958389643.6667.15304179251731917749.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2ec7e6a1cf1b41ea08eb4dda5f4961df40d65207aafeb15d1f5624f11d286bd
Date: Fri, 10 Nov 2023 02:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699583896
