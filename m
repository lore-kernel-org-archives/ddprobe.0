Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C2083B2FD1
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 20:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774642494; cv=none; b=LDT1Y00gBJ/yEEXOqlYKtSHx4iaeGum2vrd7JMAQz18QX6cee6L3qPY8uamTMN6N7TwBOizi7vzgNi2ORlRkUCfNgOs0giDyAJPq/mHwJfBbitd7em0dbatNzBr43TWwhauQTzKif0RK6pqGMPi7kB1AWedxE8nW+3jR5Yu2Hp8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774642494; c=relaxed/simple;
	bh=rvxJkjYI/4LNviafMA1o3O3JgrB7smsowsuqxC/X3UU=;
	h=To:Subject:From:Message-Id:Date; b=UZyhkGSuYsTF6zgO5Pic7tG8JktT/+YjjDxomnIY0Ff0Fe6QJJjKsfNw5cJM/Gq36cvH2EIG6n4ZzeCgZeoQ6h8nKEMACVBYRL0HgrmC7B+3nn2HIL8BxDwAK9MKaXXkTb1KdmE3sPoU50gEsivdlIZQC6+eRzKwzlms5t5sSn8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ar1t5nVf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ar1t5nVf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8022C2BCB0
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 20:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774642493;
	bh=rvxJkjYI/4LNviafMA1o3O3JgrB7smsowsuqxC/X3UU=;
	h=To:Subject:From:Date:From;
	b=ar1t5nVf8mS6xROXocDDIvaoJG/vNurN0Zdu54stSXDb+29CzqDfdfukjLAIbRHN6
	 xJREdyXJ1kIUlqQBbpXQf5PtAr+KdScihbJVOxLf0tAa5jhlZkYn6eCuLcLIuTjXw3
	 rA3GrjsNUdfKJd8yAVxrY5TM1qMGO4ce82YmhqnW7kXCGMTJcs6YchKg86GIrfpoT/
	 UNKvsDSw2ELLdgvKvj+5XqKy6M5McM7Y2ltd/Tvo+nyIxdc7btUHuNMNGv4Ja0YcJv
	 49EPYOsrzK9aKowtVQH7jVkHvKTu+g8JecrilJhOH9vaOS1Nef9lKz4RAmrUV2bUdH
	 uF1wZRlmKvuMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A24BF10F286A
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 20:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177464249362.10887.13320869484487869223.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a075a9ab41e4983636c5b735c24523735a4fb2c501fcaa50b77e538579491742
Date: Fri, 27 Mar 2026 20:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774642493
