Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52777214A7A
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743787794; cv=none; b=WkCxtmFLaZ1FvtVHcg8RwfksCwK40omw4KFMuJ4zgM1Dt9glgej2RLghtLiOPsJ+YnWZTdz3Y838zuYHkrkVi6XiBwEiRZ4Em5h/xHhzcIYhM9N9LtfAYzfBDC2e5b3kDFITSgKVTVIfHsYA/PFK4/LcU3d9GDAukaACV1PlDa8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743787794; c=relaxed/simple;
	bh=Gqbpgp/o8UZppbZBEUl4KDOuYllHmkiSPxOJk+JWXGU=;
	h=To:Subject:From:Message-Id:Date; b=JmAXCjuOpeioaS04MFJNK0+VQ+AASsnY3IAriNaR5F73NumfOUWBLr+puPDU8e1xY6EF9RLpVwM+ZKeVlJMecqoiS4MVa2f/xFIhEgGAMg7jW8AoSxzxEo13Wkj4my32K+4h4nMLyio9TYYqr+zHi1PZiXbPEvfO62YU6ECWoiI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eu2IoH8e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eu2IoH8e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDA43C4CEDD
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743787793;
	bh=Gqbpgp/o8UZppbZBEUl4KDOuYllHmkiSPxOJk+JWXGU=;
	h=To:Subject:From:Date:From;
	b=eu2IoH8equNTEyFTtBnDp4KbbnKbrgCwINsed2Q/WaZbAtBdqwizVqn0kWIjFdCHi
	 fSHnhH5jY9JgVB/9+W+EDdZ1gREgudM20qlL1b0uy+fSa9TDEgw9uPpzA6pFYapHY6
	 Zs4L98KsANyl/7L+eiaT3c2I3hdgVhR1ejmAeaSVMjWHTiNWk7cnSDD5uFHhAZygzn
	 PLPmQo2mPxvXBFOJJfum2QwjbSfr/Fo8tf7eewlgxLIqLPhHLxrHFp0C+dWomCn0wL
	 /yzQ32s6cf/VA9H5X3Uh/4VXy40xE9uRlYFJ2R7WEmzcO0kpTytdMCegwDNI6Sr74A
	 CXkyWeT0UN3pQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA9A8C36010
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174378779366.8717.10256533561060081392.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8fa4735fd42188273f1894ce99cb4653ad8edf2f9736444fffba7595a0c08098
Date: Fri, 04 Apr 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743787793
