Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58FB92F3A
	for <ddprobe@lists.linux.dev>; Thu,  6 Apr 2023 22:48:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EC71BC433D2
	for <ddprobe@lists.linux.dev>; Thu,  6 Apr 2023 22:48:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680821286;
	bh=bAztXvcyJg4O5Dq3maOtqJCI9Bmcw9CMnj1ZMN3Mamw=;
	h=To:Subject:From:Date:From;
	b=HNilHtEpQqJx8uALS6JXcmdHLPa6k+yqubJNacm92lFAtDjOkPBIJVIUeW/1iHaWQ
	 CFEbKStT8/G9DouUPM81KqPuqKUJaT9BjvJO4IaYyxzbKvdrT4gARADLYLpCazBoIO
	 etydvnFPPttge3HMFr27x/ugca+r52897rqmygwTRgGAxyhbEhUVFUAIG3icEfEs8V
	 qGyt9EdrJGW9JOR0iP4U99/vOufxBAd5SNjGGCInKgSJ1EuVYWEnrP24viGdUx2DU1
	 mn9X5bIMK7KOry1UHuuBc4obDC3QKYuOfdj4xp/+HNswOmQITQRDFGTcFJLrl26fw+
	 ndc1rqIkAw2WQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8E82C77B6C
	for <ddprobe@lists.linux.dev>; Thu,  6 Apr 2023 22:48:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168082128581.26586.18343719117008795250.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9fb6a52e2564bf3a36f5a28ce57ab5d893241bfca2827475a8fad6a0473c69ba
Date: Thu, 06 Apr 2023 22:48:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680821285
