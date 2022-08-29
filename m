Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8F613D65
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 14:00:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C3A5C433C1
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 14:00:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661781652;
	bh=9U5O9qpTF1WF/J2JIjUrTpvwTCMzyRKQaWNV51saeeg=;
	h=To:Subject:From:Date:From;
	b=iKGiRnvGMgMu0Bnp0QYZ7fSya+Q4doWB9l8Gd2lmdUxqUpENdNX03Fa/roTC8jRQr
	 4t/zkt+vlW6m4yOnbh17Kw4teUO6tCNWravx9oz9srIjqZ6tOb4nQINsi2Mh0O4uFC
	 l8YwrXy2EHCS7V09xN4mhYEw5M3AK/jk6NKmkuTKQ/nxl+9QxEkR44wwVO/p60HG02
	 6L9iW6FQlOHu34IAarg3IZ9oJqzTzhbdKkelIfnLH0N7jv2NXerzkmEaVdveA7DpiD
	 xXwHMuKZ/HqG0bi5+04WBYZUq0jwPOF4INyVbtxQrTWe95xOKsTWdI6InERos7tmiu
	 Ed0MFG0QnEczw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 554AFECAAD5
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 14:00:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166178165234.767.3967169417562276572.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64dc0ab29dab326cae8878dc36345d3849d355f5bd552c4629e8295783f3babb
Date: Mon, 29 Aug 2022 14:00:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661781652
