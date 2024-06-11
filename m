Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5906F17C7CA
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 11:48:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718106503; cv=none; b=jWxDPEfmXQMUSJtKVYRoUXBEj6NL2xItN37+zys4woSlxasc90YD1WnxabUHCmbOKP8f6zTAkbCLpr4o4CI2mEJtz3JMIls2sALdNSFPIVI2T0J3dHzVHlzqzfgEjIw4TtCkxolYBGjG6nJUA5XGJLKYMby4YTkLNUn8OxBk/bw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718106503; c=relaxed/simple;
	bh=uBi6I+584oYln6M2VooJzue/hJrJeDzAIcb9Aju06iM=;
	h=To:Subject:From:Message-Id:Date; b=cy4/x4X4nT+WSQmNaPQO4H65EcJKSPUeSy+KQiOLXF7rIX2BpQpk0hVtm/QN/PdBge8+4H6LsvDmon5cGTkDlm7fBI94SoRr7T4goOR8cNVQ7j6IZhYn5cks7pPBSjOQ6+8sGyYWY8Sd3Okg8X7v3hoS+mlgF3Yg/7aaDJluP7A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IyLRvO3f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IyLRvO3f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D655CC2BD10
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 11:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718106502;
	bh=uBi6I+584oYln6M2VooJzue/hJrJeDzAIcb9Aju06iM=;
	h=To:Subject:From:Date:From;
	b=IyLRvO3fTqKVM1OC9JpVON2CqikV1d452hteUTLxb+fYvJeHQDMkxZjsiFHaI/0Uc
	 /o/nrpLFkaWGqMr4ktkNY8Edw9VcpIkDzUsVcfGyAAV+QV2Verzf1q5xi7LLkLvt5X
	 0GT5/gjyWj97VFNBmnmS/9/M4/3dYrJvevbaaPgoMCzY9nN3Xonv87WgteuVrFDSEl
	 l2iWkv6QmtEKelyWnFQIeEW4RsiokfPVKVTuj/7urMlNYn1+mwKyWS5IKK5kCKpqzK
	 nUbS97WQzBJQs0J0Yqp8Vnznon+JIREtaoa7GILfw+lDhvxgYZAw6m143AwMiFzYLO
	 2BnX8D0GOhLuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3C5AC27C5E
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 11:48:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171810650278.32248.17217646138866838794.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8468a3a26fa80100bbd7708927616871ff6d462dbefc5dbc2707420c01b3f320
Date: Tue, 11 Jun 2024 11:48:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718106502
