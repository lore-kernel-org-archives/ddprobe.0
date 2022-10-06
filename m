Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE904373
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 02:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72F52C433C1
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 02:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665024653;
	bh=hghrOnQWpFbN61Gu5qdnWdewOzxaVmXAMi0VYkHI7Jw=;
	h=To:Subject:From:Date:From;
	b=lUYOxtU0YmipgI9Eo7KCGa4IxII6J+NIA6Fp/xod0nRe5+DUdiHip09G7oHjtmoup
	 HmGnu+0VURd0WqrCXYDPsJpVyLKe7sK4QaNEMmkiT/ufFe8Y5m9CeBz+56I6E9WO5Y
	 yfDWQS06/HG9hG+UbY+fwjM3lqNXg+Jujk7GhSZZIHIKg+20+Py97d0ofNNJBntgBX
	 fdo6iSF/5lpdGlbuHK9bamj0ZakC1Vv0+TfcP7dtdeusigGMHO65Rm6CSBFYVrYAjN
	 Svjqb4hRlyAj4x+cPIdhVsr130wiIMN/SfZlFKaP5ouDugO3FetIE128VchvsxoZ3R
	 p+W3x5JjnFG6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54699C433FE
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 02:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166502465333.24128.9575136778188692657.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6489b45e1b9c69210bd0b32ac1a86352208b331dced6bb4e8cec1435b7e56e18
Date: Thu, 06 Oct 2022 02:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665024653
