Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5A767E7
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 09:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70B3FC433C1
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 09:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661937053;
	bh=pRYAxFrjbP1ZACZeY/I9F4hig/8I6F+SfbhAyYc7DlQ=;
	h=To:Subject:From:Date:From;
	b=DwKdu0zSlpcFbX5AhS4OywZwy9TpKeC7qWQ+mLr8npBAW9v/SoFSTAC8EmJDKDaUk
	 mO9g272FQE7ypCNeGOg1zpI/AgOHR9ZinL2w8OQlMirkOixle+pWYKc0mTI32s4DKk
	 dJH2ZSwcIVOCVG9lgewmt+r1Hp9zO/Q89db6ge/TmYKZEFdb9nRcPxlZYKrg7ZKgqq
	 tBW+3dchUEl+rEuexk7Oe8wb1hyTlcKXzRpzZF4gLg9cipsN0whfV9JxnOrNIdDswR
	 BC+rnDy3+pn6W6ds9XrxrspR5TLF2eutPABBEuHVBrUBvnKCZGjQF31olYMlA7eIXa
	 VPqohZ9U6/K2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54536ECAAD3
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 09:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166193705333.5867.17971613783588806336.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e72530f55aca7741db2f59a985160f9b8195665861063826c7f867b3c819f0c6
Date: Wed, 31 Aug 2022 09:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661937053
