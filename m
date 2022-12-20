Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC954ED1
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 08:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A56FC433EF
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 08:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671525087;
	bh=vOniB2LLqxjGX0j4bjzXrpFIx0mCv/s6GsdnfXQP3QI=;
	h=To:Subject:From:Date:From;
	b=kHzjwmuwjizj41vIKljTcO+woq9KcbjkaW28sWFuRWs8JRM88xgxkJBKhDuWd2Bif
	 XGZHz9UGD/0MpaLIsmHkawp1Y28oCBLuhzvSBhXpEFJ8oct38SHkRomUqpp28pNgW4
	 6nDR9Uw6i8N8E9Juvin00D7+kpkdIAsWI0OYkUooJ/aOQWNQCdKzly7Hg2UpOSHmJW
	 RQyns1pIdLchstA/z7yrx7IvLn++Ks63VNmAaS9cUiOZsZjf+0ab3mMfDlUHH3Y7lO
	 cUxD1tvlurta+Sk3mVa0nMeoWUXQ56d1h0w4Jwzekp8JNDi66KmQAux8gq89rtHhfL
	 BeknKLl8sHWtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F103C4332F
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 08:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167152508737.21718.14493506071182317834.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa2c7e0ac9594674844dd88512ca8c6cbd674d006786b540b0e774ce6bf185da
Date: Tue, 20 Dec 2022 08:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671525087
