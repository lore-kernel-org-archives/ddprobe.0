Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1A8A2579
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 18:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7AE2BC433D7
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 18:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665340853;
	bh=UM+XBbnp0QPsfjH2R2kaMPVxhrXrKalyiSAAtsOBEIM=;
	h=To:Subject:From:Date:From;
	b=oAchyR522YtzbFmA2isVMT/hwJ3Qp9rF9oR73YfHO4fJrrZKUGZ/fD5sGKuiKCL19
	 BHfDZCPLhUXWBi6+8ou9fP/lc9OEgTOyvGnbCoCwv8o0IGK5huUkQ2Y8amHKtAwvkh
	 wgA/TOF2euTDBch85k1Lql5nShQdd9ZfyCvcyPfsE28XuBMU6DXxySsK6ZHQGMsGsj
	 A6DwWVbF2I7i4s1bbbc6JlFJE9PotEgZalrR/d63KvxRLRsBY27fxm7zVqm9dWgPdq
	 Z98K93SKKzfGWcqyCjUPL+SkPK4Ix9r84bjYJeqj2AO1Zxqnu18h2El2sxS3QnUOCS
	 rNIPeMlnKpV6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D80EC433FE
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 18:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166534085332.12157.12662541881213543100.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aeeac711651f1cb9d321698359cda48e6129c5a6dfff6affa863d6920532bce1
Date: Sun, 09 Oct 2022 18:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665340853
