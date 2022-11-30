Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C50C1D517
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 23:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68C5CC433C1
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 23:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669849854;
	bh=tI5L59NYybtLHfQfh0iKS9rzTINVmUnIJDPj+1KXCeE=;
	h=To:Subject:From:Date:From;
	b=Uph6KbUGinplJ5dGTgksJDVaCCMtaeXqnuZonkFn8iXZPXjWospPvKT/UV+7xOgv/
	 1hiSHRzAbuo9B3jhKYUE5oEdhRvnvSsWWhFWtTrcKjX4nCEYa/PPTPVM3ebABZfux0
	 Dj/OlYCOedPVzuhiCZ4UByJorSRIkhEJ6EDuwtBYxm6SiTy3yk492VdaMGu/Fj59YJ
	 whIl1WJwEST5hC9GfhPgkImbSgu9INf6jLDgxkjYGbSsDljZaRt/TYP/5JSCiOWrT8
	 Qjuy8ndKswCablb+9Y+xrzhqu0LcIe3UZf+nyDEKGGTBEjZRbb27omciMDtvFUKSzM
	 S+N76XEx+F/mA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51463C4321E
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 23:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166984985432.2340.7880493636295349280.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17f3d1e7e1ec068471bb1c2938f64fd0f3d55d75f03667fd06da0a7a697594ad
Date: Wed, 30 Nov 2022 23:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669849854
