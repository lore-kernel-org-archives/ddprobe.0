Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 069D517E5
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 05:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 93A95C433D2
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 05:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673326887;
	bh=+NevajiFhHV5vqW/Fy8M52kDk32vxsKMiiIVOafki9g=;
	h=To:Subject:From:Date:From;
	b=CbPqptWufEKo3Skje7nhRAGqgjSf+IlJYxw380oGHxi7XlemcUNbmHda4zyGP8LdY
	 +6OECUrVFL8gU3gGVlbyYBURqafw2Yt575PJHKXDxG755axqDvCA5QErlO+bBr9ygg
	 t0dlGaCmsd/CfZy+++RhpMhC4rtoqgOXkkU/JLUf6fE5hLcjw5uvnjtQPkOYt6938Y
	 vKgDaZPupTIIESAr5hDfkRZ676MkhK+Quh+3xgOS6p/yhs2qk61yp2bvJ1JERmKpH7
	 ulKGzXJ3jujbDVHFOydClv/95odHCFWkyn9QrzB8C9YVPoqnoggRLWhvi1bbcONKgj
	 O9kPXYEttEbeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A043C54EBE
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 05:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167332688740.3591.12902468771879946115.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b858e37a0fd8e4b24a09945f4373b823c80446691a7e282bdcb60f8a654367a8
Date: Tue, 10 Jan 2023 05:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673326887
