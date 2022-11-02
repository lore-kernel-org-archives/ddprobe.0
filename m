Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C26B321D79
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 00:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D09DC433C1
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 00:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667347254;
	bh=qV9ApN8wbYUETUVK0Gn6ztDEhdTo1P+MxMRhExc85XI=;
	h=To:Subject:From:Date:From;
	b=Urs1ENECL0VK2L3ETgo0fC4xdt+exaH996QLtbu1HXXQdAFem2M7oUEPN/yiNjAsa
	 xuk+6OI1VFm1CqT5dMGF3FBP4pFeuu/vJ4HDPuHjQPrbBwicW6dgsTMOmiO3Z0C3w/
	 TPbD6fYf6CVIjY1vj1D8/JtDmpDWqD9vNyAvSojG1DhCDb9kuIt+GnycZ2FF9RTbdN
	 LGzdw3NQbz6TnUBjBhfLLAJPG1NY22Jgo9pSEeL9Oy/dWxRvOvkIGcpv+aJkearHG+
	 EWLKYC2oEkoixB7mlo16njGjnjnq5RdjnkHRWQe00PHWW3S8LWBA+VEG/YuESvx8jU
	 CvGJ0MI6xjHfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4FE46C4332F
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 00:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166734725432.32400.15926356221451383598.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53f99a76a17f5f7a24560389b53af8f6898bf46bd63ae7399c3c4ce4d1c064c0
Date: Wed, 02 Nov 2022 00:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667347254
