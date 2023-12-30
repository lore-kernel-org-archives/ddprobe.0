Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED7DCF9C4
	for <ddprobe@lists.linux.dev>; Sat, 30 Dec 2023 21:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gj2H7/fq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E3D5C433C9
	for <ddprobe@lists.linux.dev>; Sat, 30 Dec 2023 21:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703971096;
	bh=pheCsxkCRwntLJvc2Av8rmJ4KmpfiZEmhI8iNfi3Ryo=;
	h=To:Subject:From:Date:From;
	b=gj2H7/fqIO5n5tgf8TMA7GESB74TJHKgwK8N8E4z64Py6Ah/J+rkeVaC4DHLg4JbY
	 L28CI8u3b62QaHvlU9pCKLaQ+zvGykrJIzwiffAmlQTPXDfM1bqFBKsVDvhV9LjQKV
	 2AphXClv1bKqD5GEbaRf2SZVIZyPNWNTzA6D2wV+Yp8WOhmNpKVnws7+/WZSEIt6I4
	 1hKGK6hVqqdo7W/jjWe4k78ebdhdjvuwqc3JEFswYrxzQ4BL+85NS0KYJGzyYJuODK
	 1lXYJnztk446Als3w6TXU+QXieOSwrjj1IjetR4o3SERs2AHz0io1otpuZ8IG++dp8
	 dgXHNMfISbxKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62838C4706F
	for <ddprobe@lists.linux.dev>; Sat, 30 Dec 2023 21:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170397109639.15528.14049629637477438158.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af166a8e7e04cc83d93d09d3b6789cebabef549fc097e4ccf840f8b90b76281f
Date: Sat, 30 Dec 2023 21:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703971096
