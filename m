Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A583379EEC
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 13:16:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781874994; cv=none; b=kVda3kMLbCktsueg0NaZfoJO0G/p6AAS9HUVrlc/68xQMJlMKIKWCe+lb++5BI4Gi9kVNGG0BhQqE1MEGMEgcmXSy6a+LUpNAl6oUgL9EJk0/jSfp0OKbLoRGvzHtXN0GwH+mLVFoJxa+i5ixo0UDUddVA6AJshavjTtOFiP6fw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781874994; c=relaxed/simple;
	bh=lEgCMXRaIp46a/JmPaA863QXKRZDurhTcOk356JDuEI=;
	h=To:Subject:From:Message-Id:Date; b=GJx6sAean8IWMafXBpFiRKNTlfp0m1qIsFYX8jFcSgJYmkdy2Bw/vZEETp6M00R1yEiPBDxEba83I0lAzKk2YBHDNzJ/1wuN9ySAZA6dfWDoxfgOP5GIJnrFeKoE2AJV/jg7O/RmbUKzk0lKldJNZ5EtHZ3ssUFzOCCLHjb9sZ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hF6gx7WU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hF6gx7WU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5C37C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 13:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781874993;
	bh=lEgCMXRaIp46a/JmPaA863QXKRZDurhTcOk356JDuEI=;
	h=To:Subject:From:Date:From;
	b=hF6gx7WUU4UNW3vz234PbaMK53hUshxBkv+jw9fN04B7GGlcoEVCMVvRFoJJu3hwu
	 5OUgu0XsLl2hRslx/dJBK8grBiW+elZxUXev8oQNIICV3I6MiFF971xMFKH8dWe7LU
	 ea/jKKrkDK1aSp+CfsTsIqBnZEjE5hbQ9EhJO3tlYHbeTusEzdnL0/OebwAbUnejHK
	 50xTn9GrF2Yc/Vx/M+ErcRXPW+yhlxWWkZFYcyIVBeVHm0Uzew2TWXcd4sQfECw2KK
	 1eYqDxcGAYGCKpZ7RP1UoNaFxZr9u+I7BdS5fitspJkq3OAqDfhhNY/fqrK0pA9kjj
	 cHOxsZ6+dvHxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AADECCD4F26
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 13:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178187499369.775.6606271139595214426.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 986707b0ed7c6d343728aaa70c992daaebc2af126ea73461ed93b5bd77bf7396
Date: Fri, 19 Jun 2026 13:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781874993
