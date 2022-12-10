Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1B13A20
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 14:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80501C433D2
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 14:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670683887;
	bh=rXKW49d1zhmp+Jxh9WUc9zgaS15ZsKUrJ4JfdMmsPBs=;
	h=To:Subject:From:Date:From;
	b=jCVP+r7brC0EK5/mqOgXCni/YIW5m10ALYSdVmS9D3f6tB6Adc9MfmC77HjAjoaKZ
	 k9B8HxcKtso6wWBwI9x5hwHARUpyrXoZh1lHDDCt5u9bnt1P/vTSRXO9BGntCj2kJ/
	 loFD/Z/t3p8dRcwQcToVgRNriylOgVXpW5K/RlN2bNrOKqwL/VqhSULxgxiede+Sak
	 uClFbnOc8czNtdfYGSiYutuEY+GW2V8qFEVwlI7o8UCYHuBAqGhqg+VO5rSsEX73ui
	 awG1v7ugSugwuwgu2bStLkrtvDb6B48ZbrtDbKT08r0DE9sf4xEZzwgpX6EGjIbMza
	 Auy4bylpSLhlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6211BC4332F
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 14:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167068388738.14980.15283185297745761730.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48bbce012ba7c46f6a57fb60454d34c09aacc4873d98815fa0dcf679e05fe273
Date: Sat, 10 Dec 2022 14:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670683887
