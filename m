Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 232652F2913
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 11:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764589974; cv=none; b=kJ50iheUNUOKKDOX4cUzpxY7WxIed7XVxcRyiNxvUrb3K+tq+d1E+M2VxczEo3bz8PTi3sDvF4D1Q+CXAp6+W79rAk1YIaAp7b1Pks2Bkcdd3CFHTKDuLMUx13UBynTjRDeucMBvMCICLQwJ0+soiVcwVuvtp0wX40iGOKOE068=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764589974; c=relaxed/simple;
	bh=qgGJEQ0iupzXX6yyuWV2wDcx4nFnv4eohVaJXZRSGfM=;
	h=To:Subject:From:Message-Id:Date; b=S5sHGNrNNNHFq93t8UeAFjYPlWM0wANp+WVRQXbhMswP+K2E5HJAMhBbwWSKhhoGBJ8Q5F/SNSORuaUbNRAQTesy54SsoPAvg7CL9BkVBE41G1/s7/u6LUSwgnvXAxTiH1FFDE4ECelMOoje3qNP/3JhuGvOMHIV8LQ8pZJTO9k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RhM/enxr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RhM/enxr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA356C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 11:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764589973;
	bh=qgGJEQ0iupzXX6yyuWV2wDcx4nFnv4eohVaJXZRSGfM=;
	h=To:Subject:From:Date:From;
	b=RhM/enxrfH7tA0okTK6VCNhLDiy7ASj0j6FQXMu2Dzt90kmLjttxiGCyvThRncqiD
	 7IVCSgwD7XkBLhW9J6CQaZLpiMrFR9qHK1d/J69foB7EI2hSMnP9qjvC/Y/RHzkH5l
	 IwFuBjF8yHJbNyAfPlaPpHy2WhAxV7xJ4iaxxFIcJM0JSEOfrzzMd5he064Kyv9znL
	 sASyohCqn/EBosP3+VCiynJq1a8qdbZW8tueblpc0swdJ6i4q5PSG/Qy0TyIJfMCpO
	 Lkpd6M6QNz/mrmwcnoJ4GVnzr/A6fNTwknWH+iiU2qtBgCNiIz9Dz58CdS/cC3ZCUx
	 oSQ5h3HZSZpmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99D32D116F1
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 11:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176458997362.29518.13991276615838368649.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a91e891b197526e47521565eb93b83971ed9028d976c12ec1a1272754b146580
Date: Mon, 01 Dec 2025 11:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764589973
