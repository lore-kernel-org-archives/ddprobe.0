Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4336801
	for <ddprobe@lists.linux.dev>; Sat, 30 Mar 2024 01:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711762097; cv=none; b=gN0GTrBwprhS+y55FjkLGJr+Td0BDTJWPo3wHAqIUd+LMNYv0EMjefkR9ditQTACi9Jo2imXdrxhFk+afvcJU2+43Hf7UX+aydqZOycvzQ5nrEMQTD42mkg+JJGOoXI00NxC2vNTLJCWvBGyWnhhg6DGsGg/nKLvZYZytuLRF1M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711762097; c=relaxed/simple;
	bh=E15UaB2RBgATsVoPXYUhfdvDMYkPaRKPzSD8Za5BqGQ=;
	h=To:Subject:From:Message-Id:Date; b=PLgmdFDDwvbfNdU6lviLYdlKkRGjLMi0l3rJgAqiQW4SBIAzTKfngWTZ1JjsjNOKtlpexB1Wu+Q75NIR+SlKpLfyQeTRzwfCl7P2sW5qzbAjvOI6d3peh47Y53qcEIE7luWSpzBTk/tKBO0s1p7gw7/U7TnvbvTsU/VYQqZ+emE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hsp3KjU1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hsp3KjU1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C3F1C433C7
	for <ddprobe@lists.linux.dev>; Sat, 30 Mar 2024 01:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711762096;
	bh=E15UaB2RBgATsVoPXYUhfdvDMYkPaRKPzSD8Za5BqGQ=;
	h=To:Subject:From:Date:From;
	b=Hsp3KjU1Y3AfMjPiYUwV+K6s/IyVi/uQRLxyL5u2lAUjwMyQjgWqOrnB7laB9qmBd
	 ysqXlSjI0N2LTDYxew5tojEehBkG+L5Z6U+xdsNM7S4agPNUjaqmVybxtoP9KLDMiu
	 vPvdiZS6vu1q7LDLW3EKkk4dqlnFx1suLoWOi9hY/UK7tEkkumUSCs6N/PfTJejnMe
	 3mKfTnc8Ggfw+EECLw+FfKMrkMjtZ44ieYJ1FHvlt6/0F2YbhYD/fxxoC9BOPWgqpT
	 g8fTUOvsErCChnbytgkupJtMDiLBCdICeLgE/aXXbU30lQWNs/1040aqEjZjZe0KMS
	 CnPMiZ4oEBKrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F963C6FD1F
	for <ddprobe@lists.linux.dev>; Sat, 30 Mar 2024 01:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171176209642.11640.9296012769768040707.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8f59e8400fc55c6767dc02eedc0764b0d5f3abaa5c00045ddc810eaad871a21
Date: Sat, 30 Mar 2024 01:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711762096
