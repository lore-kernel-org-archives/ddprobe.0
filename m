Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBD261101
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 02:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76793C433D6
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 02:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667613654;
	bh=IkYjBH+ovLLaXldUfOR0xQyYFPvOrFvIUP4HRLaUoVc=;
	h=To:Subject:From:Date:From;
	b=HhxF3SaPfl+palx2U+Z/D59HwgIcAGAJOpfj+ZM8iKpI3ssJ8KcPkuqcsTkdOBjPR
	 xvCfKILSqNmjy+3YglcT8hboEWVxFnGhks0O5J2Ts8uJK8oI1x/fwghZeWYWioyjtl
	 +m81qS71wsGcbiZOBjSWyd+eMEFo9kLcbd4Jh9C3MWqw/gxkEQeyxStuCjOLmg4NGR
	 B+gYpPridm9Rz5sEwZaXwZ1C2B6eye7k9IiaaUYE2xl7shs0/Cf+/X+Sr+J3YsPoWb
	 gJ/gGy/VFDPJ076N94m2QBAjLLAxdj4MH1+3MXgPUD1xlkPTGxzAKQOv4S/yqGLwvR
	 h9dLX2F2Po5hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5AFB4C4332F
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 02:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166761365435.19471.17679351831037362260.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1548e6d3178ac558365c977e493e3bc8c208fcfc897ffc4499ff9724f24fa5a
Date: Sat, 05 Nov 2022 02:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667613654
