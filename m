Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C61347EF
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 09:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6EC48C433D6
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 09:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668936054;
	bh=1Ic637J/wJyCSeA0PLhq5J7d5VKGT3C3vDucbzs+jug=;
	h=To:Subject:From:Date:From;
	b=ENISURvkLvnQKlxUfPEvt29YpbRRm2ZAYRCfKLEmrnBi27Kn4XckPn11sbZuR2+7I
	 OK9z8hDs1IFkrYuOIupLjEDVsU+8yqVNg1flvDDlIQA0PPObNn0yiyvc3eXDuGIU2y
	 eMFhe/xoWfSX54v4GS7ofFYYhwhxbpdBVBgk/u1Z/iYDCMXwU4Cn3AUollHrevjnHw
	 0sMAaeQcFmzWVbni/pe2eH/8877HciQYPwV2TE4dTaz/X09sFl9ImOIA8gGuQ008Sv
	 pwC2REVBbEuNhMUs2DSuXr/110Sn/jJMd44PxsuqKqNwpmb3Q4bpEiP4CrsWz9WjmH
	 x0iduCvpIO+Pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52CD2C433FE
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 09:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166893605433.17592.12469761134947341034.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60ddb3e328f37a0f7f6254fa9d5192b3294f1e8bf086f4557f1893521b3f1cee
Date: Sun, 20 Nov 2022 09:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668936054
