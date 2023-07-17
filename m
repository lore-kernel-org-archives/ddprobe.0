Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7ADFCC2D7
	for <ddprobe@lists.linux.dev>; Mon, 17 Jul 2023 21:31:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3B7AC433C8
	for <ddprobe@lists.linux.dev>; Mon, 17 Jul 2023 21:31:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689629468;
	bh=haTgfiCOXCXSfn+OSEUKADtZBwnhmBpRcd7WQhQ/dmQ=;
	h=To:Subject:From:Date:From;
	b=H1mxFdML8+U1pvRWqvB0UERPWoJLtjsrduKEAy9nKJjfw+w8t8kGNr2rKqP3gd4A8
	 CA3wyzkk7ckpWBs4X3mIPT7OzV3sg6MizqXoycVk9kaWsc/k65Lza6WImp1OoWeT6k
	 OdAJB+UsHikvOKShCssDP60h7zK4OSyYo7QWuVHHTvooG0v722BiH3BQ1qvnVI1RUu
	 81J9yaQgY91Xyl339MxIfnHCFvUnIJFbge328knrKtwaq+blQWft1ujjupIKEwOJtF
	 fU8vq4uFXrtKctFmEWzymfy9J7Zl3fc+LZT2FaTFX86c7xzpHSmOaF7J4Y1FssEh6z
	 4XLO6D2cGEn7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C035AEB64DC
	for <ddprobe@lists.linux.dev>; Mon, 17 Jul 2023 21:31:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168962946874.24093.15976649331402437785.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95efc21424af37e2f74a895f6c6feea91abe5e629f319cbbd2da2098e804f521
Date: Mon, 17 Jul 2023 21:31:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689629468
