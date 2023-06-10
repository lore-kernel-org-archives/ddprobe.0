Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE5CF290B
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 22:32:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 38774C433EF
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 22:32:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686436326;
	bh=Y/Lta9v65BMDsE73t61+/+vWaUZ9N7sDitNOIQ4iYdo=;
	h=To:Subject:From:Date:From;
	b=APYS11QPKrg1hvto8miYaLnudCMNUgF6MxU6PU1y9ZBfh6EQOMt553+38YSAAkdfk
	 vEIukodiPlBkLDIWqO2arUyOOW4+3sipTfBHiR+EjL3AjfP3JaIhjmVTeKtmt4x7Ey
	 KmCEqNd+gBoQ7RJl0NfAwA5xtVFwZWh7Hax1WpK8Ha9GvGA87AL2ZpT5sOSHOefFLg
	 YcXF+iW04JTg1BwIkZ3pyFMme5uPdOFJAUHPQcLak+93SiK+smUPhaEIhUc0LSlpMt
	 XPJB7SxGh4vUI8Gi1Ujr/Xy+4tsSDzqgUt4Cvy3wbUOC3BUCWrF/v61NiTMN9rS0yC
	 V3yM2NGK2HyLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 161C6C7EE29
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 22:32:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168643632588.2010.12363330408819374317.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ee9b6242212210de1c49aa1efff5bbe9b859cef97278d89cc00ecc76180a069
Date: Sat, 10 Jun 2023 22:32:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686436325
