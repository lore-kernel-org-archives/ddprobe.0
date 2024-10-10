Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEB3618DF65
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 09:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728553554; cv=none; b=fro+DN6UDsEG5G8DwUKmj1B197Esl1YnrlkbaX4z7aHSKDHXOQjN1aIlSwvt1jCveLjWSRydQXuil9cNkw0oWNfxCGjnW13tENa9bykHc3TNu5h11QmuQ5EMDJgJPFFweYxIYV1VOzZrvDwuN+mL4P60sth4A1S/dyFbSY33NRw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728553554; c=relaxed/simple;
	bh=XWiAon9zEHLuGo7QBtV27pKCl+j/TbP+v5WD/LXUPtE=;
	h=To:Subject:From:Message-Id:Date; b=dTsgCfHsPw7RdG8aN+zXNYR+tNIeskeC+op+zOzqIoDApTiawDu/LODgCODmcj3yUzaID59gWtLKtNOF7Xn4PSw5PbeUV4IRCtkW4tITLSGyrGQDidOmdbOnoEbTeyoSzyffcOrEOjnGnEDe7wj/z8+JEN8iZ/eBn7S6YtbWwlM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J8TJDupO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J8TJDupO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9D94C4CEC5
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 09:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728553553;
	bh=XWiAon9zEHLuGo7QBtV27pKCl+j/TbP+v5WD/LXUPtE=;
	h=To:Subject:From:Date:From;
	b=J8TJDupORmJhl2uqQgFxb+XJY+uENo/vUOVUmZFMDCzf4nOLrrvsZWIiPTSQPHY7R
	 aP9XUkrvss5ZHEkO4vaDtHrxOxXfk4jdPCy4wP4XlVJ57enikFyG09ZlIHjaq8w9FH
	 toPxvlGwF8CHmDWXscwK2zw8T7ffOr1Pj8/L35ySXCQhStn/NjUj6vTw8/mosybIx8
	 EoIvAGvq08q5gQFrQGgPBRsl5YFNUXZdKO9PxjxQpv7AJDC5lzraKoXBGhXd9mgD0w
	 QJ9ht9Fu09VfunOvzQHkxOfcv5IgHfiwjr8wgmEWtdCRwyvgD6tdZeTM+2Xzw8hC0p
	 jyYp4lDjXmFHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98358CEE323
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 09:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172855355359.6334.17140051680975490060.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 659035d901158fe3ddd6a6de387f5cb510fcc469f59b82f671855ea119ca1f19
Date: Thu, 10 Oct 2024 09:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728553553
