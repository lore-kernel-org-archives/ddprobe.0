Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3502A3205
	for <ddprobe@lists.linux.dev>; Tue, 14 Mar 2023 10:08:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6C45C433D2
	for <ddprobe@lists.linux.dev>; Tue, 14 Mar 2023 10:08:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678788485;
	bh=fCd9/r2uw9o2SCU2w44SaRJ2WPC/injTXE3y2IKdF1A=;
	h=To:Subject:From:Date:From;
	b=TQrlAZ/6HvlOd89iZOSECO7HcJ4DJUGyai9tBui8ykJWEhox4K0VQRneHb8wj2XH+
	 ZeeNn1EsQ4uzcVJa/imkb+EyPyUUuXBPE6cC5abXdDJh9/zWKTIgAp4tNP31HbxRsd
	 hpR+U4LdPpdzNmweeB/S6E62dhwBeufXEl9NVI478RA3V4ZtI3OiVgFFwejbVG4VmS
	 Wsi9vt8pFajwu/MZIF2tghok76ugwC0FMuKNl2bq+PWeaWtexkruM8sniAUt/Dg2Ys
	 Kxvm2XD4gpbNKgb4hD1AswP8uof0DjgU9FfDySO3eLogx2tMlAeCKPmQAxkT//g4DE
	 OejLO6/im9Ypw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAC4AC6FD1C
	for <ddprobe@lists.linux.dev>; Tue, 14 Mar 2023 10:08:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167878848575.13274.9828775109727402662.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 886d8840d55ca05dfd0427020ec97787be58d4b0a4595755b1f8c602dee73933
Date: Tue, 14 Mar 2023 10:08:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678788485
