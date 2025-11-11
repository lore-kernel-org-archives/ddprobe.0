Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6791C34D39C
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 05:09:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762837794; cv=none; b=Q9/MQgthhpR8ugwrjmcJW33QiP478YwizrtUE+Iq144JNPxEw33//FssuZm2IMB5pz/o0tVTY4+90VsEmE2Bnp2WB7dGqCpchBAFKZyPXKySPWQUqlDByxQ9vMQ67l2+qs7OFHpQkwt6im5AepfuJ60chAYI4VsyzC4Xo3oYYp4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762837794; c=relaxed/simple;
	bh=+dLyiK97zMNr4e75NOayBF/Ib/QbHvitezFgOuEawhU=;
	h=To:Subject:From:Message-Id:Date; b=iaJljEnxAsqMUYX6x05YJPTgXCntqq8wIIkipo+PAARh2b5gMgjx9bf5ZGryfOJCVBRJtmMGC5Pvz0YGwCD5h/e2wBFRPjCWeWzbLwBeJvF0nRKazvOlKcl4L2pf0XVn4c3x4IZc+P381J72aiCJ0Zdy8xrRtulzKGlk8fMIaJ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DHRDxvox; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DHRDxvox"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCA14C2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762837793;
	bh=+dLyiK97zMNr4e75NOayBF/Ib/QbHvitezFgOuEawhU=;
	h=To:Subject:From:Date:From;
	b=DHRDxvox8Dg5vTfv7O+Z7wfDtf2dmsrhEW2Wtcevck0/8GIr88q6sIGiDZMAexK7I
	 MgyJu8VdISpK/FhJcVfJ9kkcVH5ZWayM10xZXJsA/m1Rq8Vv6NnMJd02unMImysU3a
	 94ndK0vaHd1rUDt8UWcbpoxUBUst0ewapw1lKtCtJNsq6qcHFGnGMXaBzZI9bpLODS
	 PBVnawoiHnuXHY1HTf55Crcl30iOaCaMmV0n/dRKnHEH7Xn1etqqeWU8tRMgg1Vp5L
	 Z9tZdXqMvo6ITft5h+J93Q6j/jVG7yepSV5sNtP+KkJE5A4+uDTyRDVELTF8dUeiQv
	 N4Byeqlr3Kw9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CF82CCF9E3
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176283779363.23401.5229271269090749209.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb281413297ae7265e9fd588175f0b7fa8977bda91b7626122cd91b1684dddf5
Date: Tue, 11 Nov 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762837793
