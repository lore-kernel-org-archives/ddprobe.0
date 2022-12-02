Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF0494C8E
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 19:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70CF2C433C1
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 19:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670010654;
	bh=9tsyI11llhY9AQ/sK9nHRxVQoI+WM3ythMgECFVpOrg=;
	h=To:Subject:From:Date:From;
	b=jM6f/ffE5X+w6AeOKLgKXgcIrbf8pWGTV8gMsXPmUsm+JhWAwEfZz90oZAQ1Iu6D/
	 IKnEdKetJ8+aA0zJEC87L3TNJ2FXtUxZxZ4/ra39n88NEi902+J3DhVuCZ+hBIvcHA
	 ELqnKEWYEoRb1LcYoGZccFDu+y3CufWjJOq5my+wcqd/PJQaUax+PXaI7DTamHapR2
	 rz47MjezxeoONzdYVzBBppVyFlQGlmHZND91lDsozUpgS5JepbHpKgnDTHvKiZxrco
	 IY0wDbH8AmiSeOd8PsBh6QyATNdUiw1oJ+RkfRqGdVJCGtSZVWXTQeCv8D/BfNYv7K
	 SheWko1HNfTTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5228AC4332F
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 19:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167001065432.6394.9330037473472804966.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a6c29ce4bcc2baeee0a85eca3ea3425ee8cbcf4250276bb4aee8ebf9152f88f
Date: Fri, 02 Dec 2022 19:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670010654
