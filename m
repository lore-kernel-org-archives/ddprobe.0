Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C9A81854
	for <ddprobe@lists.linux.dev>; Thu, 30 Mar 2023 03:59:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 14BF5C433D2
	for <ddprobe@lists.linux.dev>; Thu, 30 Mar 2023 03:59:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680148746;
	bh=zdMOMwVGGXbjeaLyhNXUnvG7+Kx7Dr4JIv9t0Mlq4Dc=;
	h=To:Subject:From:Date:From;
	b=T/OaNW+acrt+z6KmZYY6cp96IqLYoGXgHnR8AY0pv1YJPKyx5NJALkpSmNgEWQM1T
	 TgEVZp4KX0Y+czR1cBvvBkXo+XJS5waMXwbuwkl3dd4i2JS5eeXLYxb1NtXThHweqR
	 S00+PACTHqhgWtHSifIa6DaiW5WymHK0NO2iB4k30eiaLpoGdOiTveitdQgAxVuwhy
	 LqwAZf/jVtSrcJgZzNreBI5h/e6YnNRMvCsg0OerT8wQfQ2UDBegyR1ika3Vz78v8Y
	 v5ZQjn8R1jEyfb2lcinjh69XmHUhv552o557o96ZDCjjZ4/DcA3kg8ATt3/lILxB4G
	 Oi20IMQmvADdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E6E96C6FD1D
	for <ddprobe@lists.linux.dev>; Thu, 30 Mar 2023 03:59:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168014874589.3839.13693708461902624220.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d8918023bb38e7c85407de5d64133eded0f70522b271a4863ceacba12f98567
Date: Thu, 30 Mar 2023 03:59:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680148745
