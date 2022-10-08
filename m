Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8E2110F3
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 07:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7CD6AC433C1
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 07:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665214253;
	bh=kJ0xYkpz/0DLZZqABpz//+MEWHAn/rZ+LKwoUE6HL9U=;
	h=To:Subject:From:Date:From;
	b=auFOdRQ4rdMiIV11It+EGY97tyeLH7WICfJZ06OiLhQyQ5bKjj5L9uExhqEpcraJZ
	 vxEkTd+9h3tMdU5mx0DsSV+AwjYg+7MXcT4Rb+3Nt992/IkogNg/74l2ycWyJ21uBV
	 pOjJdKcxwsBareD0aImnBQCRsHkM9SXQcakk0E4lGiY1ipzzYTDbImLXvHV/DWMWHP
	 qjlxxB0CM+Tlo+oKCEI01SscaJYG93hh4SolgtuTydpGCrPKXWekzwMM3PeRVhFi1/
	 doNnvPMhPtmumgXiRApDTg3knUTdm6KrlJ8Iior4eszvSEs0qq/5wdpjrDOlLqZo5f
	 OK16tM/KFq60A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D82BC433F5
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 07:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166521425334.10231.14700220837850283924.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e21a4aa4094a0882392a90adca778fa4ab379e492c073f0abde3663c883366b
Date: Sat, 08 Oct 2022 07:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665214253
