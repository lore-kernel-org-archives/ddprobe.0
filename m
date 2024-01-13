Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 007B44C65
	for <ddprobe@lists.linux.dev>; Sat, 13 Jan 2024 16:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CHRcWTB5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83518C433C7
	for <ddprobe@lists.linux.dev>; Sat, 13 Jan 2024 16:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705163896;
	bh=7aW0FXCTNV5Lh1Rws/eSQdDfcEOJklpSc7T88rkyKz4=;
	h=To:Subject:From:Date:From;
	b=CHRcWTB5JB+tm7G1jVDGoG+zkNwblhEssSNZnxV4pjWFT2wor3Y+7RJ9yGLGHIxd5
	 UqIYsmqd55meAO7f4ESBOr1QYT/PxqU7eZTIajo1HqM7vuvoOiYIuMoTKcxp4dXjdt
	 3CDLgDRfeee0fPuCitsXCZUY/VomyAbvagDDa21Cg+P6gRWBHcPK0DedjMFE6WjC+U
	 j97A83+rmfdAPI4W/YosMwISRxzyZetif3/KhR2S/d+PyUkdDwXWlEf+9Ka1TuGoEY
	 WIcBtAn1SYN+6N+2RKx8VylMUFbAZAjaar3S4q+vY1id+eA63gQA8sxyjC3Iwdyxs6
	 itDxZEPWymXzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 664ACC4706C
	for <ddprobe@lists.linux.dev>; Sat, 13 Jan 2024 16:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170516389640.14926.17208421913994184653.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b178aa71da795f56ad3fb4c9118d2da69ef42aa99500e3f374f408691bbc4099
Date: Sat, 13 Jan 2024 16:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705163896
