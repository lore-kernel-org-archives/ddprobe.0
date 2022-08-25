Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDC187B
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 05:50:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A06BC433C1
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 05:50:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661406652;
	bh=RbUYGMvzoBojSHRhz6bv4Bo+XopftW9NQ/mWa7Fq6YE=;
	h=To:Subject:From:Date:From;
	b=oWVp6QHQRbS+3PAiq9M2+fD2JeLLLEGjOCPMuC2ObY3s0e0iTFN+qZktc24khHIgQ
	 6PP8C/2QhMnNbYnnlsucRUdt/79UQrZ1KCYnDROGTmyamlx3dy6PId3VRs89+sGBLC
	 SRuYuTkzAF5rfc1KW3kitcj7GvPzRNPBDLlYbZDcOwu/YFIkcGXsxlGdApBA6N7kNz
	 6wGhKDi8i1cuXsBy4X27XhyF9259sAhDzs7zDFDqew91p9uIQRIPIY8W0Gi/V7PAsF
	 qfVaHCOFtihvtQjgxpuTGMSU7JgTEDmmUi3zfEd6YRxqM2QSD76KojVRokmbkUDWvS
	 7K35rhNRkQaZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5709CC04AA5
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 05:50:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166140665234.1462.9122009741607909323.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e18a33c475d0eb0e881a624e264b8204d26c32ef301b3361b100596e47a1c95b
Date: Thu, 25 Aug 2022 05:50:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661406652
