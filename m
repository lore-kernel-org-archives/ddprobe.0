Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3480D173
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748909994; cv=none; b=TdMcbHdGV8ohURTpH6abtU/RdWrU4DZhsKjHbaxeWl6eiGEZ+sBZMOfahpck9dc6ZGawD8fMJ4Jev2FEHPHG3dsPPykmkLBtAf/uiHwY9zUgah2ze6ybbnH/iOV9wtlZr16jkHGEDP3xo4XO6Y/Xc51yVQLe3/P3Vpl4kf+TGTA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748909994; c=relaxed/simple;
	bh=4dg4YYbOHXRdR8SAIn4IlWMeHkP7GDtZF+DD3VNebDI=;
	h=To:Subject:From:Message-Id:Date; b=Lk7Vq+Kcar9CJonwRZRpW/7wMQgcTkNHDjKrOxW1cDmSXHias+oNEC1aKeVPrLrZBfqVqKRiw7MmKj8ya+WQzUg9C9QRHwFi2MnYssFE3gsZKO8sjHrCua33z2WvDSJG1SzcpqkWyDj7NSMCWSiUajDY6tOfmZr7tMcPe3m159c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CCJqkl0H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CCJqkl0H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4124C4CEEB
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748909993;
	bh=4dg4YYbOHXRdR8SAIn4IlWMeHkP7GDtZF+DD3VNebDI=;
	h=To:Subject:From:Date:From;
	b=CCJqkl0HoEoNMiO4Uh/TJTeYktA0NyETETJJa0pDzSLfCuhKCNWvKC16D3gn9Lkok
	 dnXoifcGv5mjlxowD1KO9IggA8q+dtx/sHMSvrLW9zDBUtuYw5Mjkwm9ocDFKNKtNJ
	 k4bG/MqBbOnFGONhYbXPIoEYeWHapXRR0DxCWwz6Q+skfQDYrSbUcyKtJSQC/LQn6i
	 zscIBGbfGEcLFZo1pd/YlMK0+c7hESlkCaUMoE/36J1Mrctoo6iRZV11IO3wUufcpj
	 vzG8ak9K6OUE51twPopMNGwh2PqAjlqO32W6+NH7nefXftcPhPYvumeIklalc6BjMi
	 crOryEXZZ4IKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F821C5AD49
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174890999357.26127.13518054586652006877.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b0c756919c2681ee6b675bab8cc871f07d09433edd6dc38158c791cd9531264
Date: Tue, 03 Jun 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748909993
