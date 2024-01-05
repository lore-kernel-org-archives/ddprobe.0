Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 291DA6121
	for <ddprobe@lists.linux.dev>; Fri,  5 Jan 2024 05:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ByuooI+f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CCC1C433C8
	for <ddprobe@lists.linux.dev>; Fri,  5 Jan 2024 05:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704434296;
	bh=vjYumVqswv298BTQFBNIKz00xJGWATO5moUW4Np9XOg=;
	h=To:Subject:From:Date:From;
	b=ByuooI+f6jN41213zfm65oWWxz7bKUPPaoK6QsFKpb5CRFy97iJdoyPetXiioNMNf
	 +tVCTFYSCVAZ8GOXAJVruA+sKVC2Poy4MUIVOfBUKLinZtUH1SyS9A7AP2IyYa/aKY
	 a0RtxZxM0NmoLmqsnCe9GbT5Bn48LaECf1VwBXlwuC6UywdZmZ29kmJJqxWrYiCuyJ
	 Kr78MEpkKEb4Wm1B7Jx33csqPxfcbzRuUDusIOrLhCIYM0wS+DAC0u3qLD2x7z2v+u
	 kk1yJpyRHVDq7lVQNJyRZ2aeO2sWcoqxc57HumhoaQTsFF7D+lJs+dfrNwzFqGEW5t
	 SJ5nK5bFHAsPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7E5A3C3DA6E
	for <ddprobe@lists.linux.dev>; Fri,  5 Jan 2024 05:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170443429650.3883.11645780252578445185.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c551042029c75e4c170ad77cc1fd7b833f3e17e7af80c9fc697dac0ef0f06e43
Date: Fri, 05 Jan 2024 05:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704434296
