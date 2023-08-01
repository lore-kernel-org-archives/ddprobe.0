Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B3ED2AB29
	for <ddprobe@lists.linux.dev>; Tue,  1 Aug 2023 10:32:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3A50C433C9
	for <ddprobe@lists.linux.dev>; Tue,  1 Aug 2023 10:32:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690885928;
	bh=Q8cVp6Avql7rJiXnYE+38mMD5cIrUfvpr7WEmLAGcP0=;
	h=To:Subject:From:Date:From;
	b=fY6feIWrtgL9I7ISaMtwVDnnSw626Ur/cWenvh7LR70QABoLzPX+5FEuA+vvj+Svy
	 4Ha99L90EUHTvXtNbJbMPeWkNnrUOkzB6F0esrD4wApgrWmssYkFBgBoPwZwSbiQw9
	 HtoEZN7um2oXoRA2sMciHSWrd66TeOYyyn0MTOemm4atPxdCFGPwWXQCFp/bn2pcOE
	 u/wFAonwF3QqEMr/DWfJquCTAJ+97z9uFcu9jRQFhHzvtr3fU9bpCWszv8GqBONJ0h
	 HiI3hALUzbKWpY6GvCn5J6H0QbkUG2lgSrJIgb9cSh/AivUfCuNbiM3+wS+LjYZj1F
	 TLBk01ugsvp2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB44FC0015E
	for <ddprobe@lists.linux.dev>; Tue,  1 Aug 2023 10:32:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169088592869.6747.4347569558289059688.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f51ef427c2c8a9608f180c66a29320edaf4f035e3641afccb254214b4552fcfb
Date: Tue, 01 Aug 2023 10:32:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690885928
