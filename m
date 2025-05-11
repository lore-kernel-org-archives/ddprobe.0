Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FB451C69D
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 20:19:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746994795; cv=none; b=mNxiLvDftjhShz4T6HZDqqeYS0DTlpW4AL88j6khhIX5CgcfzMAxsxwptWoAXQ8naSmBz69bzB/hRbsRxDFa2le8hivU2ws4m4B5QExL8XNqeU6cbz65j0lw4VptvpUEKjWau8GVqcBmtDeyCMMRu82Nk1Xp4QcoEE2t11LdO7g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746994795; c=relaxed/simple;
	bh=2Q2tq9nZq7sLcFZbFgzaO1/n+0OG9Q7X9h98xhMhXWM=;
	h=To:Subject:From:Message-Id:Date; b=RDnI3+Vtk9bXerGuC3OfGozS8WABAa0/PhlIzTBlgGF+sMg08pSn3hmxtlhgxrK9Tp3Clzep9MB2WQO4cFGi/MTt2KwGy32eP77ypkrH5zpqVywgF3sWcu83bK4T8oeN+Z/I7GeRzObEwCzThz1CJNGcHW7OmdxNCbyWv20ht8A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vxls6xLW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vxls6xLW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F593C4CEE9
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746994794;
	bh=2Q2tq9nZq7sLcFZbFgzaO1/n+0OG9Q7X9h98xhMhXWM=;
	h=To:Subject:From:Date:From;
	b=Vxls6xLW1DgY2ncPUr2nzkaRJjoyySnAq+ji9TojsGs2Okj4Z67CZsYMimvYuwZ6T
	 u+Ij7QUeLvY1lDxFlTZHtUpuH2Rut1x3jOqkoS2aOEDznoVr0NDxRPYF+C1l9S7KVt
	 q9k/LtL2hP1BHShpO7BMteGyFzFWvwTICYZcYmGDZWrCmLYTZkmR0XyK4tuWR9yGEf
	 tMoBYKTXibuIjllSACGGk8rUQEMLl6kBoVHvtk6v1XXcBwGjYWnbRV7j7qokQrH4aY
	 XRd+5GTTskFUHtGbzxeTqArn84l/Wby2YOSxTv8H2afDXBV2/JiAIZo57y548LTCvQ
	 CHhCoN3ZF3C1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E494C3ABC3
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174699479357.8482.6334698874705398035.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3949694bc28af65d7b27a88cb0992a47dc16b09a68bf2bc71431fc7d1e9e6c9a
Date: Sun, 11 May 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746994793
