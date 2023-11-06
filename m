Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AB6418044
	for <ddprobe@lists.linux.dev>; Mon,  6 Nov 2023 11:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t+XGTJrU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8B716C433C7
	for <ddprobe@lists.linux.dev>; Mon,  6 Nov 2023 11:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699270696;
	bh=B+gRrmr4Weynr9qtL7bhO0hSLQKATA74ALTukPw364s=;
	h=To:Subject:From:Date:From;
	b=t+XGTJrUs0vplj5AUtM3TrRgPINY0oo1UDtVR26ZmeyMvpcctwGaGNVXEpy5oh+3v
	 64hN2bLXByJDimbr6o0B13i7GcfJdOCLPog4a1ya6A2oCqwbCqn7Suk3TQIUQJpPp7
	 TM1qtTcoOouYUip9hzOMJnqSUK/HZUsNnoxO9T2iQ7jRdYbWb/tLwfOC78uSLOwk47
	 WgCX20fhetdF7TOu4EiJnTzshNp4H2MoYdmhygHCmhR++kQC/k2M/cH5dW2RWoQlzs
	 HogcMsWFRjXESo//bmGLkDw/4jWvDqBXHK5n/2J9b3yLJZpekJyhunVEZjdNTYxbdP
	 d2kLe9zsRbZkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D528C4332F
	for <ddprobe@lists.linux.dev>; Mon,  6 Nov 2023 11:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169927069643.9612.17779855331498846782.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c657bce69f415cac04acbb7802edc8966e6e4addc8fbb43c066d163e42740ccc
Date: Mon, 06 Nov 2023 11:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699270696
