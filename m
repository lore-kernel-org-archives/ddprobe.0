Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FC99254AE0
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744910394; cv=none; b=YjP/z6LBMIlDygjfZgJS1CpS4ugV2UAs5OH+cHsmcT8Hnvz0LaTGIiquQ1OrZmDF5d4w7SD7sl6zQB3NiQbA9nAJDnYRq/MMLAJSLNsWnFHX30cEw46H+nWC7DQAKWrBb38BZ3kyzQsUnhoXKOyNVcrUkAJhHAlcj+DyMZG81/M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744910394; c=relaxed/simple;
	bh=TGIPTur/7kRJjCLukeAGy0+JEb7LtKDNET0LCkNGR74=;
	h=To:Subject:From:Message-Id:Date; b=Xtwp5e5COI4slbto+B1sxsN4t/ZiCtSaWsRxL5rbdRoL5u4R/2ligD7OM7qd9oosQgRhf22/r3Ty8FyS9BASzBe/2RtV0EnKaZe2pZoSaHz8YbspFKulDUDE1ZirLvY0+F+pZtuHU3YFMGNVp2dzS6ma4c1lE3kGpGa3BlbA/aA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZfhVY+WX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZfhVY+WX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD5AFC4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744910393;
	bh=TGIPTur/7kRJjCLukeAGy0+JEb7LtKDNET0LCkNGR74=;
	h=To:Subject:From:Date:From;
	b=ZfhVY+WXUqdyfmcvhk9E0g7paUU1i3RFDfBH7R3e+tbgh9hSiYq+IQQWbWtKbHb5f
	 6sLExcfJ6hrVCzEa1OPP5f9ZN8hI6ZqM7TM/wpiqF7LtjWgWXTnK7Os3mqUfQxaFQm
	 ENuJfAjtevZ3lYwOLQVF8mSZCV57JnXIE49utp0IadHyFFq2ZlDIIfCRkwnw9lJda7
	 2OTkcHbFZU9QFukRZPSt3IhGJKoPxV/shmr5zf8W+n1y4EHmjo8BLxIMck9CLSWT7N
	 NQajvQMQfR9JNxIa2ByxwLDvKC0z7XkcE+CuxWVRTmZ7L007NMTEimopayevOPGh3e
	 gZ5X0kAFmNWdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6145C369C9
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174491039367.17603.8372144615967337790.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03b5ed6a5f648eb5383df895e916fefcf6fc98de122f46f65c0b46260a8ce63c
Date: Thu, 17 Apr 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744910393
