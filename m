Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 627421851
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 17:07:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8136C433C7
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 17:07:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688836028;
	bh=66Ij4DATxnxRkvtUeD61gnZv1IZQ6ODxj9iNXnQw81Y=;
	h=To:Subject:From:Date:From;
	b=djUq9tOny6WvCZH7BAXOnZgsZtXLwxC1fNyP8PLsmKUrTnBvqVVvCbYTTSApMTGmE
	 PWFQ04O1JF/iOMbBNW2vzihFTrXm+JS7nWiOqBY+J7hP+PfH9UsQ3zTO0aZEylzZFt
	 7xu+6H+tq82SydS1Y1DypLHkssmDxYtJf3l2rOxM2/xKoUQybiy8XhsVcIvCZDUpXC
	 MEGDRLY1qcP1OVEaBj5hjshCaZXPUtiHFeh2WnVSET2//Yl1KJZ/UQMHksYZdP7fVJ
	 2E2vEECCvTA/9497gjlScckdqTlob3sci5mvmEj+Cb7JNtZjQ2nAnYdhj8zLFx0It5
	 aC8SsAsRusJRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA80CEB64DA
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 17:07:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168883602867.30122.14788082983674383774.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 324ac9651d0dbf8f0c40a67db1b2fecdee529c55b961233861c36ec1035b6035
Date: Sat, 08 Jul 2023 17:07:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688836028
