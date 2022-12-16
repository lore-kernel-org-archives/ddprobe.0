Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB78D371
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 06:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80BFAC433F0
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 06:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671171087;
	bh=I5Dgv23Rc/xQdelr9g2IMOIEIfNDZBH7QTMqQ7N04v8=;
	h=To:Subject:From:Date:From;
	b=MA4yNCDyLfc8HToFKAk2PfJhENHPdWJ/ugiqNebIOx+rD+pw3pUnahvHao5fAm3iB
	 3EpJZ6a+eCYgBdOLZR+8/sd8s3wfe04r6hKNKr87LTM60dH3AvAAYQX7YLnRYnoRqk
	 dWBedTKnFLOLrrNCsTEs0uxOmZJvNzI+Eeenn+QFZH2obXnW16SbAWkrca3xTdNy/2
	 O1kPYL9pckdDLQlzUBz+imnJWgBjVkXp0bzo3Mli1vxAiTB80VE/AwEYOcDVIamJlf
	 C18RhCTbZFzc1BxEdo3nOkM4xxRy0T6xCeJECRtgQUXe1T3KOAxqhNxTCeLXdrJYJF
	 T8PeWwsw/PYRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63F52C001B2
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 06:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167117108740.13407.14824767416857693469.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2f10264060275924936cc7fb43b3a3f7d57e444663f82813f6ef2a1341a9796
Date: Fri, 16 Dec 2022 06:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671171087
