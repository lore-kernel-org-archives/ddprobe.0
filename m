Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C530C7B
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 00:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 64780C433D6
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 00:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663980653;
	bh=YFbpMeHTP0/3w/7dZACsz3o95tIZeYaFcoEhOjBJRyw=;
	h=To:Subject:From:Date:From;
	b=Y0YB9Z+sF7TjuPARAYcaH5MyAcJhp1BO4XOBhnTCc0VSCBbDiTMj5uyH7POYr1rzY
	 YshN2VlLXrfNQbmf6W3mr4vZovmhLb4F9+kEMwyGDi0FfocDB7OIEqT+qQ7hmF0w9O
	 lqtC99rgkfRLZmWnqJVocvj6LJkK5K91f7BheSyxhLYJSuf4GST9gcwnj03A9nBT1C
	 maKA1GUAvzRxTnfvX0IYi76KFe8kalZ6F8gjRFjrUWaFohrbfeksDlPpmPSPZa+OAN
	 dnRut2hn8vfkHbnjEW4vHMehnLInwvTz3Y65pjfWQqMWHvNmigjG5fdZlHF+E+ftoE
	 aZa9FY2hCpNrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4DD06C04A95
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 00:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166398065331.30989.12487304926857312351.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c84b28e60b3606367fe91b367d8c8c3b5659272c0d479cda975c3ba64e599fa1
Date: Sat, 24 Sep 2022 00:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663980653
