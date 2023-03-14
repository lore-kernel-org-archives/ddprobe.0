Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3436517C6
	for <ddprobe@lists.linux.dev>; Tue, 14 Mar 2023 02:27:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E158BC433D2
	for <ddprobe@lists.linux.dev>; Tue, 14 Mar 2023 02:27:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678760825;
	bh=ClvNh54RU/WTvq4bJxDHt22aS3+9x3hQcTgTGcLyWfk=;
	h=To:Subject:From:Date:From;
	b=YWQCkicwcG7KNc40+7U+SdtTf1lOe1xfuVTtUSwcbmUZMpv5aIByYo1IyffxnC73f
	 QZpVz7U71BDWX4PH3LLf3GNtawYTDy5RK0Q94oy1AwPESW3ZaOgsKQ8lEyAcFbjomg
	 ULTCHlgzf5SZgYx9BvsHLyZXh9o5cL7gL3dUXHJiuDFqX0kJEDFq+nKwzq0B76Y39/
	 C25fbCeaM/yKg/qPDOBirydXBghXE243Ku8UI3d02xgLJtW9zr1dR/ZRHXEFVZoPhE
	 B1Dx06GC9gApmGf7xA/ZSl9qfrwcLyjKIeNHx6UabO9o2ENPwK1U84sZMT3VJhTB3/
	 FlVEPxmlJX32w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8E79C61DA4
	for <ddprobe@lists.linux.dev>; Tue, 14 Mar 2023 02:27:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167876082581.16929.11399615532957130963.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86319dcd1fe78daeaf3061fda367c0044fac89acf976f4b770d2468f3059e7aa
Date: Tue, 14 Mar 2023 02:27:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678760825
