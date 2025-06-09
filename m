Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2666C78F4B
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749451794; cv=none; b=B25kUNnll/nAF7khO/g6V3HPm1x98MProjUntFH211ndlN1ziAXcmj1H6F7+Ux9yJHSWX9c+nutALKk/vqcPW74WJF7LkB1Q3Hf2CNacunyME+GHTLiVzeGAwYlbjOiIBCPJ6X+RWaQfMPtscoWD8kqd1I9Akm/QQVsfuxB8cwo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749451794; c=relaxed/simple;
	bh=58vdK6HRFkHwAXdth8n+2rB0aZyHuo/IVf6Jhijx0uA=;
	h=To:Subject:From:Message-Id:Date; b=IdbMNSFhFCZAUT87h2+yfzgIFKHTJu/0S1ez7bs1jrEnBIh8qo9Jt7ZzSr6UTkUMsNUCrOD4C3Lfog1Q3ZwgVkd767XqrHcdGdF6iYU+sViIbPgd5XxbA2OYz5CTkrVc58OR832KeE8G6D3kND+RZvDrEJI4DA3r1eSNFMgVSWc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CfTihGCz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CfTihGCz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2647C4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749451793;
	bh=58vdK6HRFkHwAXdth8n+2rB0aZyHuo/IVf6Jhijx0uA=;
	h=To:Subject:From:Date:From;
	b=CfTihGCzewTuE/GCk4uumOu+307bEa2jTcJ1urJOKtwI42VkKO34jpO3UBUH9A77M
	 ZhQGcUqce4OXI5g0LrvN6NH6nHho6hQAibcDBri3L6OZ8lJ24p0dCvuuGPxJcyBwiS
	 KxdR1NaHzUroEqczomaIIJHE/bAnDEHoc1Uov4F+LWG7PVEuADJCQCPccSLQnKgTpE
	 tgX6BMeTCL5KV6SuP6jnZ0jtCbIQq2cX/Pq/Emgbt+Vn4rKIk9j0q1fQMlvGSEAU06
	 CMGoYpshxmOFOQ8nl0cf/d1jd8j38Vg2V4PvaS6LGzc4SiraFQZmFIyCKgnVjJqV5t
	 wcX83WmFpRHRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E6C3C61DB2
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174945179357.18921.8840829121096368361.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5375074dbddddd6b029fd0d25d5483b79432ac6ec82eb877e13436ae970ee37
Date: Mon, 09 Jun 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749451793
