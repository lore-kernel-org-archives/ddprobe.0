Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74CDA7464
	for <ddprobe@lists.linux.dev>; Thu, 15 Jun 2023 23:19:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7417C433C0
	for <ddprobe@lists.linux.dev>; Thu, 15 Jun 2023 23:19:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686871148;
	bh=+BsbUcVMYPfaH7MdGxI3A+iSQQhw95EvJkLnGO6lMIA=;
	h=To:Subject:From:Date:From;
	b=StAn88imfO484/azPdGN6SN9LzBCE4oOLp0SXHAh3TY85RNd0BijCOPzb8vO3yHnL
	 3jpi44TfdMOz1oCiwozKl9cyDqmx0q/fofdKRGAxYzmClPV6t7sHwMvFMpNn9GIRK0
	 iSfBlLypQAsk0+HNiQnNKB+Av34arxO1F9Lti7/oLcbrSnHGvkI86EMWQhYLghTLzA
	 RN3o3+MZFHdpIouHvbIhWRzkQXLS5sZUeR3Uv/uCpWArDV+U2SiNvhnPb7KEIJt2Ji
	 GxD5yZeX9LYiwExXmE47OjruQM+pwoucoF5R3OGsJoguFLLZol3Q3dGAqavopF+xm9
	 2YNlELG8BI6Wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5910EB64D9
	for <ddprobe@lists.linux.dev>; Thu, 15 Jun 2023 23:19:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168687114866.19552.6974554199934629170.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 252db622d4a789d917cd6071828d35679be4a045c81661194303c80a206d85f1
Date: Thu, 15 Jun 2023 23:19:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686871148
