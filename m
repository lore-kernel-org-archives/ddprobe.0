Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0BE52FE0E
	for <ddprobe@lists.linux.dev>; Thu,  7 Dec 2023 09:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="opKwfrWM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A1A0C433C7
	for <ddprobe@lists.linux.dev>; Thu,  7 Dec 2023 09:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701941296;
	bh=ZL3IfR5Rx4tv00DkC73tK6BW5KsRNlb2UwXXRSpfqFk=;
	h=To:Subject:From:Date:From;
	b=opKwfrWMaIrSektJlCiq43j+qDntwPCjD0nVuwa/xz1AcoRXzPz0NULDDhtTDFGSP
	 08vkMVKkEXu2INA6ntpt+IK87+xtymDH2NjXopJLb8HwYuVREa4mXqw3vtHHmUYdm/
	 Q3mdTtC3wINgEEhb0uDMj4RQ81kkcAjp1XDxb4ACx5vleigSSb28TPiGGJn2NWrawu
	 nP9uFYw70JydAjSOwQe7LTGusvvWgz48dPSxGPrZPdOvFSrKjtdRxK07GLk4bTuGg2
	 N3b8Gh+H//4tvb10lgVQHwdp9wsS85401LuOq/6bHd8Rw6exzKClyeXY9ief7aj6na
	 wm0FvvxRiQA1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E582C4167B
	for <ddprobe@lists.linux.dev>; Thu,  7 Dec 2023 09:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170194129637.27934.13896713495072081562.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f6be359bf7c73062cabe0beb66dfc1f288977f0556473fdf3c7b5e94bf4c316
Date: Thu, 07 Dec 2023 09:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701941296
