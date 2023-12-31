Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FF88B645
	for <ddprobe@lists.linux.dev>; Sun, 31 Dec 2023 18:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="stIzwgqU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8CE00C433C8
	for <ddprobe@lists.linux.dev>; Sun, 31 Dec 2023 18:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704049096;
	bh=+5mfPZHQktvo1ia6gDJZqTxvcHzHAfolQN1aOrDiZc8=;
	h=To:Subject:From:Date:From;
	b=stIzwgqU/NP+VH8c1t/vXTjLTO6EvlAdDlOToih/sTzONZvQh6YC5oJaUzLL0AfR8
	 6DFQnhwh6LKOaDaooBfwBqYSjKfW0eBhVlMvi/xmddVcj4iBW7dyExFx41dF9fO55d
	 HWHKarwukyY5FEQHM12+O6rq6Oc00u5rme4dqxJfiFv2yEiAYxUFB9kGwntytFCUei
	 5taU6T8uCZinUc4/iZx9Nt1anAJ0g0BN4s2ZXX153ceSQLxfT/HdaANWFNg0QPcG77
	 QoxNVrnqf1jrKv3eUf+7HGBRpikmm8CfcDpJH6rxo656VSy4QT1iu9qO/uJo25hCdc
	 pbXPUhgwqxTiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6DD5CC3DA6E
	for <ddprobe@lists.linux.dev>; Sun, 31 Dec 2023 18:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170404909639.27152.5539193024094678372.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a63d6a4aa26f90785fff81d274446dd17e28334dcd311f5db26ce4cd7df9c3d
Date: Sun, 31 Dec 2023 18:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704049096
