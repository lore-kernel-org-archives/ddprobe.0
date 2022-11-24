Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C002B1FB6
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 07:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72172C433D6
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 07:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669273854;
	bh=I4tt60Z/jcaZOJHi0O5KIriB9eu8NdeNayFRLE/CTkk=;
	h=To:Subject:From:Date:From;
	b=YeL2Q0bmJSijalpVwBamA6SwC9XQI+GUOKffE3dqTt+sFNd1GL5dSXUZc7wGPiJ4e
	 h+hk17y1cBiW1YIFH6fK2cMnqHToha5f4C+7GlpcbfUr+xvv+jG/E08gEmooPXWCZi
	 ll0Dg12p/xt06bLH92jhZodCxC6xznQsxj/7td17/kDIDWvD2z9zIxmp0fG8zrCybW
	 sxzg7WNWGDXhrzHZJHkXXPidFLrTcWMKFWOvkdT+3FOhBNe1ZpYOzVjIHU7V+DgZMD
	 Pifi0V+w9GDP6cAt+rhzvpYy+ebr5Oc/ivoWlHqsyEJtiQw2LipGcLq5v14vlwF9Qh
	 ttqneY248qxuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5723BC4332F
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 07:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166927385435.24165.15632536091133109310.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e86c0247c8dcb857f5d0d97d294cccd9ab9a283f6acdad1254b0f2b0d751ab67
Date: Thu, 24 Nov 2022 07:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669273854
