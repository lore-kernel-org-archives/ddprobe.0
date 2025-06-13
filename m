Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32A96231837
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749841194; cv=none; b=sYUwBNrXU9zBwBYmlTY7T9BhjTYrxFhHY9l5bTLhysn9LcrfmWQy4fKm24/nBjLHQrq8fQ0jMmkIny+eqx22beBcurw7jmW7BtvsM1xd/9fUFtuJn85smrNSGheynF/0D6RyCPqyVD6XQ9cYq6k0mzuP1nDDdbTdTh8oB4ssEv4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749841194; c=relaxed/simple;
	bh=PyrZj/wPpDvZ/XnTkpAVppzvuxrFXL0dx/g+rGmC1Ac=;
	h=To:Subject:From:Message-Id:Date; b=NVZu7EvpMa+K9P7voR6X2EA/J5Hrc9rCVehB4jWWfr4OSFfS9CcZkQXuk+KVtQsV51NyIM8AlLqU9QNyLgmPzouTQHR7hbx/k8BpPEleaiIJB70yPZ5tIB/C0JLV6M3CFNK0xaeGxcaz/sIgaz6A+gISLi3+UzEiFr1luVeqn7s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Igm1kepC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Igm1kepC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE64BC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749841193;
	bh=PyrZj/wPpDvZ/XnTkpAVppzvuxrFXL0dx/g+rGmC1Ac=;
	h=To:Subject:From:Date:From;
	b=Igm1kepCATX+JbblOcrBGYJhXP9SlhmCKExzDZTDjbXBasIvKqh08ymoBECYEVmhR
	 Ui/BwILIFB/zn6WOVeDtXoXa/WGKzcVIeXyqZfHtfIkrj7sbZhwSyg1YXhFiQNFn0g
	 u6ung+ZQQqqNPY3dzAtRcdc9CPezAwqeUBObkW2rqVEcPiaWhbDxVA6GqSBEng3gBa
	 eJMkeak5Hs1GfYqRhGnBFaoEurXWS0Of5YxSAwJHRDPCuQNJLtdXlzUQIhS6Phw9QO
	 ujFo6vQ23ExsEV6dF5ePLh7/Bxi/hWF90xnBTJZcz2Sd4cenzr3iIWyuT+6oyiNf12
	 1o+WB3Y2qsGKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96E97C71136
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174984119358.9262.1319187533353531996.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa8d6f300e82e58a5186788edc9f106b67a5183be231b285c175fc2ed26efe9f
Date: Fri, 13 Jun 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749841193
