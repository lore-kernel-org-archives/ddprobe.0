Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB2E35397
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 18:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75875C433C1
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 18:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670004054;
	bh=8+evM2ljoNM42VWmWSxUe9TeZzuecmGiXwUmiD5PPsw=;
	h=To:Subject:From:Date:From;
	b=EiNgIRvIFP0ou5sgxqOuwEaDb24YjF1mmhPweFUUR6qLKoNT5Vg7t8BKGtO8vQgHg
	 QrgUuNif0BH6Gzohn9y3/rajA6pxy01onjbNaeqNfn/7i7QsQanYcZPGfpC2oDgcr1
	 W0dvF0XHeUdQ9EfI/983RGJJJtEUvmZ4DKzUawXfkpO5lylRlyCCl65E2431Yeq1jk
	 ftedpjpn6rGKcKwTBMy7BxSjoxDhdLwkuaiydlxjZHu76GUHvCSxhamCXGTsNqOKPV
	 rDd7u/8ZMLpYiWsLD1WSa3ahBcpOKqbQ/X7AI/vOtsOu3cNhQjJ/pac3CTLpOO9HDR
	 PpcFWa9ercfTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59FC4C4332F
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 18:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167000405436.23278.10595190050485948655.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9364ba9bd76f8935dff81d9dd7c6a88ed6c247d0dc9b6762b53581ba192d16e
Date: Fri, 02 Dec 2022 18:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670004054
