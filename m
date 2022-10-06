Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2BD64A00
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 19:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7FAAFC433C1
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 19:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665085853;
	bh=Bxzxbd9Cjji5Yhnjy6IRDOs2IomDrTcKZtH1jl5ktKc=;
	h=To:Subject:From:Date:From;
	b=aTt22Z5Q9ax/ryAHMcFPqQUVPGmWc0aL9smW6lQRhsbKAeZpBo2OWMGVD9mZDPr0F
	 5DPRvXxvSpEEkIcJSk2JfBR92o5vVCBW6BYTHECKmePTGdsqDjrj+qzRLzT+GXa4xM
	 rCCUonsJY44cvt61V9ACAyTK+Ddtt8/WlMBAjHYQVr/9cGKhIm2RVriiV/mC/fA1s+
	 9xJgMgyPsYv0VKkfsM1fLawb+Tc2WMXgahxEKWxjY473GUIylJVizARGdyFDL6Ztka
	 WYDK8yiPheJT2QyDaSgPlHUXZehfGzGvjh4kIYVIDhn5TVfyB1m3AT1rsison2uHHW
	 h1JB0+6Dky42A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64168C433FE
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 19:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166508585340.3484.14158280579791650541.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ba7e5601589d753b78e5118d475f62b4494a7613671c5dfa328d01a52e33db0
Date: Thu, 06 Oct 2022 19:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665085853
