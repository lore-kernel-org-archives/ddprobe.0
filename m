Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D106C28FC
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 18:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80C9BC433EF
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 18:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671645687;
	bh=YFmZFhl/pPtjel/jsR2rdPE0AClyYRhR3vgaRYsD4M4=;
	h=To:Subject:From:Date:From;
	b=TyNXg3PZ6TcZKhrNmTG7sl7mobtSKsKxfFErhUbAOqaW+LMiRWpFYhepOVoWq8qXB
	 4t1VXyGUnFk0JsFwfer7/SVB2Mo7yFQpDsSQ6r+SHbdG1FBrCvY0JEh/DMVndI1/nX
	 hqWYvVUGYbBdJYSD1MetUJMEDFBxa3QyzfmOTqYRYKHN3GwTNjoLgpdDPTW9392Fkm
	 FLxgoHnL1eq5t72CtZZmOM76b3E/4pHTsNjPXdSdpee6IOdNYbxNm8cC6IeMWOjkiR
	 PtiIarkF/6KvP0JJvYl2VJLjJTGfnrSZRXAqy00fj+Io1E0O20YJ65M5m53dVa/wUd
	 TAusHxg3ux4uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6824EC4332F
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 18:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167164568741.2524.6426273653013057370.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5de383f4d77b62f0b60b9df729bd779c110a0860be34c2e48490e0d80a554a38
Date: Wed, 21 Dec 2022 18:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671645687
