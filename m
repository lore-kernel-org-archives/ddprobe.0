Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA1502F36
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 23:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9A339C433D2
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 23:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670541687;
	bh=UDuvo6uV6EwVqMF53kOuhbI3QM/zpdqDCAjkrzHo5Tk=;
	h=To:Subject:From:Date:From;
	b=SLlcOgNFeivBLMLr/PwXcNr9EzoXx8fQTnI3wLMQSRVh7dn0flGJa3+q8OmSJxfI1
	 dHxrJDqN6FnsGt4r3YCJRTOKutfmYNGLoy5QSHZufv9EzQac7Ml8SzwMucHIBOj91+
	 HLqUHJZ3/zJDZn6qe6B5fp7rHLlnLczDaDfpLvC2WgeAHUMziUuA3N89qLcPeiSOIs
	 24zOi9XrgKttfVITUtk/bs3FBuiLt5yJXEH4wke2T5Q+atL0OwjLkM9tgweoIuzQPu
	 DoP3nw3EyrrD7u/JttM6mb9nqiHrCPocuXAO0fVhgKjJM4Gi3PHCp9qdJ8bish7Fka
	 iaYfQTGbQou7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7C421C4332F
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 23:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167054168750.9546.16606183795008990654.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8dc2054d0186405153351989ec13b8811054baa505daa883d23ebfaef01330d2
Date: Thu, 08 Dec 2022 23:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670541687
