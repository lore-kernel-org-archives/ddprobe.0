Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AEDCE2583
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 13:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6770FC433C1
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 13:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662729053;
	bh=d9mornDKYF0oXffJN/+OtMOVreRqG1Op7Yp/XchLxnc=;
	h=To:Subject:From:Date:From;
	b=ZaRpSbO00LfFuEqHWAkFHVqLd4Kz5g9pFX9+wk5fW0qLBcfK4fBEKHYhNMhOqBjB5
	 VkVqUZpyF1f9o8ID4gtVuLvo+7eQRYORAksddyelQGPhxINyBjYaMBd8lDVoqs3XuO
	 8bWV3t9DN/oINwAEt5/dm4Ydap9gLxerBUM3kTivJQoci8rj8/PcbIdUSOIstkeA7w
	 eMj0urbdMddIarUL67lCvq4LZq9TIL8VRfFX7ku+4ATuqSD8A731SacdyWm/eCW+8D
	 TfpZBWqrI0RI6DlA8Rs8IIegbQJnWOTfwkZhUM0frCwu/OH5DioLT0ypna8+54i4Zy
	 eu7FOp92Ui7Kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5117AECAAD3
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 13:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166272905332.21779.7529225738035043246.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0b68ab7f98a309ea46df737c280a457d724f95f2be9b8d166d46877597fb99d
Date: Fri, 09 Sep 2022 13:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662729053
