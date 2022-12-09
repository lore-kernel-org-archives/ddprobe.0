Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7420630
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 10:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F927C433D2
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 10:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670581887;
	bh=ujgNGgz3wej57JEwpnGxzTVwFf09NQKkUmjOQgcpTuc=;
	h=To:Subject:From:Date:From;
	b=f9XD659GErqXjYlWAPxum9IjUpCg9UprXJAvp6v9Tfz+qx02tZc9fs/uhcToIOqBT
	 rfI0rKW92IFDKGmPUtI46hvTMjflVdnpsitIIpuYXFR+ajooLFb59Xr7/BMrsKDr3h
	 CwqihZHawaoT6Q54MYUXPWRBEPQMtxm/8VjobL4ISICvi/P+5RKIsUxireyqtRcP6+
	 rpEyOcqormbXjbzfYvq+TwkqLk8FVdbFM2ZBiG1WnVH9WWIaPe8/syaFjvI9BoEotP
	 6CBSlPWdNoNowrRNr25/DY/pT95J5b2Bgwd1FhB+cpzI/otbo+vbZR4c7Fbl2R/WpV
	 aN/ibwo8gY1nA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63523C4332F
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 10:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167058188739.28832.15842457146454785950.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad7df2401d6ff917b06da3034d662733df440544d42cfcf96701efd5d8ba57ae
Date: Fri, 09 Dec 2022 10:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670581887
