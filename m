Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2EE7184C
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 08:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8136EC433EF
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 08:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671523887;
	bh=bCMt8QLspshkWVJDm++1YP8z4aGgynhwqjBEPtppcSY=;
	h=To:Subject:From:Date:From;
	b=RJevLGQcRCcujsZIX7NAtYy1LifZscCNpocagNRAOavuLBKIHHmWGsQW0sBU9q464
	 qyXPsghkiLUE7NDFx1ZWF5s+l0eWTEck4Ho/tjkP+CZjv+eKC0br17DYV0IZYbbWZo
	 LOddn6fTYgKQfcjN1tbbTHu8/MRp76VYeW2NUMTfw9AVrW2IgWgpfQU/vstBSQVnYH
	 sZRNi6tu6WaV7UtVkz3Nf5y5wnqJUBAqiDcgglzog61kRi24uQoUn2oca8VVY8tous
	 PDhYmzArwL/VyvWd+7FDPDVf7PqkG8TyZeovK4iWwBgkB6sJl+FIThEqD1cTobYD1t
	 WkbxhUEmvKUKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66A90C4332F
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 08:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167152388739.23836.4114198069373581679.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1eea2fa105189bd94a6e4282039b43a7cb1bdbe3f9ac74558d312028ec3ef195
Date: Tue, 20 Dec 2022 08:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671523887
