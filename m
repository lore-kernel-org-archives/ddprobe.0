Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45A0B4AE101
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 16:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788366634; cv=none; b=JswUig9XEd1c8r0ynUBO9Z54Nr0zk0h28PJL3ZSrUfspNqR9CI3ibH8UtefmzTyAjg8Cdkk9akR0Z9YA4nB8qOjTQpxTsJoc97S/VTjNNBIy6Q/dfSlFPH7jcG+krhTqaZ3PwPuwhRdhuWj3LkLyq0WiCHKp+kW8VeLb1Nq088I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788366634; c=relaxed/simple;
	bh=BXxTll7DWxz/Dpm5TpU66lp4MHXJn2dq/+zzpRJbxOA=;
	h=To:Subject:From:Message-Id:Date; b=UroJudj7S+9AVOBIIRkN49ItAiSOfEStf2eyQSgKh9t+GCNCwRbC8QRvBK1iOcdJk09MV+03eaR3GhKTrMPHCaaNfPna3yL3b8nCbWoELF91Nag7E3MwNoL33D0dnyn07RFGov70yurBGzTfXoeIcgxVRFT1yjwW6OLOLelWdIo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VRppQXTI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VRppQXTI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF928C2BCC7
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 16:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788366633;
	bh=BXxTll7DWxz/Dpm5TpU66lp4MHXJn2dq/+zzpRJbxOA=;
	h=To:Subject:From:Date:From;
	b=VRppQXTIyOl0rMy+heN9CSRUpahGPVrvwhkVEcsl1wNA6/H4wGXRUszD1q7Nk3s6l
	 n6k9zv7o08tZe71IbVKMo0MBTHzLJwwKXHEMGxDa9WTib+Q9r7tSql1XJqomFgP9gG
	 U6oogy8VmC4ata9wol4GIrJ7bLqs80b1LhMW0yoUK/MqbB5oJL9fOu6KsrrfaD+BiM
	 qKPQXbgxL1rsW7HqS+CaAjRpNayZh0E830j+pqQIYvE36faCNFypVSh/z47EdTTrHx
	 xeJxNcH5zQMsYnRoy54OvDy0YGAl6E2a3dbk1eOfhSRDbPpNauXGbZTZAF9i3YYST1
	 OHL9BVb1H2LhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD9A1C624D4
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 16:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178836663369.8403.11553810878857385164.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2645318eeeb20b648bb8e6edad32ed1f95afed44589ad288753e52945022e78
Date: Wed, 02 Sep 2026 16:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788366633
