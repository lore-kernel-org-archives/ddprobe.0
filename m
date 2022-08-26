Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6F3A4401
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 18:00:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 90DF2C433D6
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 18:00:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661536852;
	bh=x+Kf1xSKbdOX3m4/seyFdw/vCyO8S/GkW9sDMHoY1h0=;
	h=To:Subject:From:Date:From;
	b=ReRDdoqQCLm20/olot93PTuW3ebhUrbHB12xK1pyS1EsbCrcSO0TxSrboaZQCSx3s
	 bJs4OwyJLvsbo80+Bit+1j9YHjt9hB0RjkBAsy7CIBFHoKmtaIzzLKkD47fJsKe6U5
	 mRPX8OEi5QvW4GdaGgpd2qQip+8X+Gt29MvMLXjWqM94Gabl8u0kjM3Rdbe7OkhISH
	 K4x/1oBLk2s8QPkE5MeX8tZQp+WvZQzJY8mgYMx1AQ5nbHFra+Ce3etmMxnBP4WNff
	 XmpACo6QCUnuppBe6WjFi93KLoJCph7taE4I5+ZfIlyLQvDH+FbIWI5/7D6zWQaeWn
	 9hF2SS4AQhdSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6AB30ECAAA3
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 18:00:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166153685242.26125.8704732096388289697.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6819e7cbf771e886d4a1f8d835243be03ae99bcd3215a3870d6f4dd5962801d
Date: Fri, 26 Aug 2022 18:00:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661536852
