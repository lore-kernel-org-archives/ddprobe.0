Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F6CE1FCE
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 09:27:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EDCA3C433C7
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 09:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688894829;
	bh=CyyOj1JFUt2jma3+1jjyMdds9WFHNipB6PyIRTkeIVY=;
	h=To:Subject:From:Date:From;
	b=naAM+F+CPQ4CS0cZTKzWVpr6V+9YEwQ5utSGkVmYMrhS4pzslxW9gJ7AfmFepPn0V
	 MPDg03D3wWRIQySjo6HW68O0t1O1k8GUm9v4OdkiazdQn+ql9+1fbUTHuduemLXEQ4
	 fLy9+IKlc26BiexhYKlLIb8tyRtcopIdY8lixXvYvstvAAcZC6Ri4P5kE2KWAmn3e6
	 kVWW9KMCOviCsiZtjvK3/sgos44a8KLNqTXNSveEAtrGOt6ebGC6ddxVd4OQOj/TZp
	 teXX4X8DAdft0CHaJXaiSRKrkiLpWhaM49SWlBCus0nqCm9h0y30345iHL7sFE5yvj
	 uCn5qBjVo5jKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D2A86EB64DC
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 09:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168889482880.25739.15743540601847342779.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91e78f4bc8fbfd9eea672ae77a9b24b57ff9b40c514f9b3d67b070a92aa1f1e2
Date: Sun, 09 Jul 2023 09:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688894828
