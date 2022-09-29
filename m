Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA487EA2
	for <ddprobe@lists.linux.dev>; Thu, 29 Sep 2022 03:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C864C433D7
	for <ddprobe@lists.linux.dev>; Thu, 29 Sep 2022 03:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664422853;
	bh=6kV7xAJSgigjsMMXrz84m7YFYjZD8/i6TfeVNgkygyw=;
	h=To:Subject:From:Date:From;
	b=XTJeUEV6M7aikQoTsExsEijdyzxGl0PS4WAtmtw1FjqSdZC2hcsbXuPoGmWj5g0bc
	 6iTL24eREM0UUxGktw9P7Y8uHoxs9n8gF9vK8LlAmg4ZTJRzIFJq4/ZGBj6x56lH5T
	 Efgir3pKQ99Xgyxa4pzitX57D/nKlMLZrDUuTcp7I29xs3uXis8wuuulCxOQEX3lfd
	 9wVuCGmWJ0XmbYKlrqfEYoVyHWE/xbIPIHQK8yfLyDZiYh3pvBmnUFYyL+bNdcHfof
	 7t+SaP5h8nmMNSbNq4jFuIQ11EQCS7xCEpYs8TuO0eRM92+/JUaCaAmlL/d8ANSJDt
	 bgKg1+BRw78RQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54912C07E9D
	for <ddprobe@lists.linux.dev>; Thu, 29 Sep 2022 03:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166442285333.11355.8856235397230131653.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a2509f74deacee1b8a52195c32f6d281d3f8069ae02bb674814299138689215
Date: Thu, 29 Sep 2022 03:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664422853
