Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA8F936B
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 11:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74342C433C1
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 11:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665831653;
	bh=70y/7Yk8zMSc1vyi/XmFhe8TyFu4F6SFD1cyWms4ZpE=;
	h=To:Subject:From:Date:From;
	b=PS8qXAwgB5JaUts0D4QF2geOCAdxYrZ07mqbCKQh0qX2931oWHZPTt6BeDnnSRHSX
	 fLcLm2HVmDD8rsvhbHJwpnGmMmq8bJMUtAWRYHsTVSjXnHLy0jp8v7qQxfpH/HDUe3
	 2rbPUsqcWdENbLWE18ihYISRGzxFD1+vTpF4dNMeRaUlG6/+Bed/3e1YqnPbr3wAmb
	 gtd8eihaKeaHvk2Wnab9NeiO3EaxBFtkynTYLKy7egYMn1E2I3laVIOZq5qMNzzmya
	 cUPf2fUaybRpf+VFSHGiVIodTkADsEr3F9TsBu7Dq/FiTMMX0lSYrayKExLcQyemry
	 Rt3LYfkSWOs1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 564E8C4332F
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 11:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166583165333.24552.8498634778386184945.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 755385120d32fd768074287a55b23dbf2fe89762333a662dfd8589b6566c9fbf
Date: Sat, 15 Oct 2022 11:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665831653
