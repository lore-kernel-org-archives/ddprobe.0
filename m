Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36C978634D
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742644794; cv=none; b=Hx0ohN2ME4I4QgRckpMFNz1deMOzXJfR4aF4f5cIxkBqF8ausFo1DPM/3P5jnpnGO9gypcZlFW3ua/2+aY0/6PJSK4dmfUOgF7OYPn+Q07fusOxbRDKhUJ+x17LZy/C+gpIm+uOqC20C1w2Yzv5/uK4BTybhd9JohidAUUrA3u8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742644794; c=relaxed/simple;
	bh=IexE30rOUdlrDQO4slIr5SMWQ8w4BpZPPHmuoRXshhw=;
	h=To:Subject:From:Message-Id:Date; b=NvarZTH2qH2sBlh6DUN5RyDykwrZGXNzBtyZT+vo2SwQjam09Be4qhdskSBsvgd77qr4O09d4dtr96Jl9d6D6j3ULDm3NeKfqWCFYOg6gF6Fh5I7dS5pUn8ly75bioM3ZkOGjja8SAlKsNEvq6aaHwZIjBolwzQm02a/z2Uw+M0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bMnfXkvI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bMnfXkvI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA643C4CEDD
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742644793;
	bh=IexE30rOUdlrDQO4slIr5SMWQ8w4BpZPPHmuoRXshhw=;
	h=To:Subject:From:Date:From;
	b=bMnfXkvIpbizRRkqSSmIO1yqGrzIiwqmuJHiPMXHq/iGH11V77a4JJ/bGybxetQH2
	 /fvJSO/7D/Znol/bFRg60ks9Y/2krkLZG8DQBXCiMcN8Z/m0mz61hCLuG/eboY0V69
	 RZZoTAJFUj1CvhLlYZwT8eRdUSEP2iDJYecL786O81OgoZGrr9RGN0/AEXZIjfjMb3
	 ziqrdc3HhWo3LLJ/QpzV7HmokK1ZEmWYulzoy3l9K6xixwdtadwH4+MUSJJLNg3JrX
	 x0OwwYLS/m0AAjhvau+nzG3uU+3LM78feWK8IkMclOuPi7Eb+uhFjNv8SYwTUcyrNL
	 sN+KcrGlnEalQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9208AC35FFC
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174264479358.19947.17825467295364966095.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 110106b25063acdb2c25a2253d38a3a3925090ca7b544c3e43fcde87f13c7054
Date: Sat, 22 Mar 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742644793
