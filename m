Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF40F184C
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 07:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8022AC433EF
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 07:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671522687;
	bh=w8gje3LSvYCto4JNuMrPzxWUmXeL0u10lRDIiOZL9fU=;
	h=To:Subject:From:Date:From;
	b=MekqvJfjMnroP1g86vvXeiGmKicyf1J6UP+ylPiBw6fGB0hGUyjOeLTHB6xfoDkfq
	 KAZQ1jWXEGdvzP/wo8IwFGlG0vOQ5wn1MAd7F3DsX1qpHSBJWIWn946t59BL5gMZa8
	 FLp32oGxzA98z6q7JDL6fiFzJvFdeM3IcYo9+OSoWXWidV3BLw+bm72L7KVUYlOxig
	 GuN+/YbJSleBlbbtlvU3elQbxBJ+B3Z25V7hvlxQXUMwO3PuYmkPEHPOPwN8HUv7B8
	 i2u5fOZWLXQ9zkC8T+GLZOFE1DKS0Jp4FYbqrVg1y73xhYRis+SSd9NrcH2Mu18ceH
	 X85MuV8OuHECQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65FF7C4332F
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 07:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167152268741.23064.3251094511874986528.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4dd756a8a042bfa8ec305bd29206759562fc74afd41d073c58f835697620f6c4
Date: Tue, 20 Dec 2022 07:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671522687
