Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 616631878
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 03:18:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D568AC433D2
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 03:18:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686367085;
	bh=+sIULd2nqvhAGI5YJ+7PhQ3y3j/4tUvep9k0nyOiICI=;
	h=To:Subject:From:Date:From;
	b=ugGFBSI+1u4qcSmVDjNh7UZZJA9bVQyaq9AaCWlUWK0qgkqf2RDTWfwZ25+7DQB40
	 vpsjHGNQimIWUqSbNJ/Su4y6qPOP0ou2lFHY/hsXyjuPHyv/o4MOMnjFeTPnDfvWk4
	 cErXAkmfhOByCO5Vwbx2evJ/dHYUohY594t7Pv0J737GCDUABeIhMlBCugdE0kRHoD
	 X3N4B//9Z62CphnNMPEpEYTYjGmYKUB6WPat4MlglMQEPSVbFtWyo00re/XyJoFd1i
	 OCw7nrvIE5RLq8fQ2J8HEdcFvvKMseThZkyenQA8o3NbdLAVmT4YWOZCCJRs6vzYoE
	 kUIQMrhEhrfhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB8CBC7EE2E
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 03:18:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168636708575.1943.10902004014817517075.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cdbd77e154c0cf9eb575244f42036f401897f0775ae7bd4390c9358db6b97525
Date: Sat, 10 Jun 2023 03:18:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686367085
