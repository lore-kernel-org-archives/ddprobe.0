Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F50910F9
	for <ddprobe@lists.linux.dev>; Tue, 24 Jan 2023 10:43:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF69BC433EF
	for <ddprobe@lists.linux.dev>; Tue, 24 Jan 2023 10:43:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674556985;
	bh=3uL/VKSyNv+NalPr6w8Vb9I31yZexHvQLYJQZewlN1c=;
	h=To:Subject:From:Date:From;
	b=cCjeJ2dBoWCaxI3pg3yVncWnWXHSli8hplPhjV5GXgbD7rAwM7jsu4Kon3vOVxqyQ
	 4bysjW7tuCMkwwmAbioNP7xIat/HWtEnQlSLQznRmtQI0y4hJ3EIRQ9YrSwB9aDpHw
	 +h+b1Bjnk4D/Jj3KhphEnCjzhfUbA+3zRHShXBafh20bEejn1Y7Oz+RGHu3xz1Iyty
	 GcYt+WeYvD0BvkwT9dKDlLqXLR8QvJsnluth/4nG1IVFPhBzqq0RciAYfYmqYQjucU
	 vjbd7GLG3hN/SIc+bsKwxlxZFHn76HWf+mqljVOiuQyO8/xBxRlmfMj0gdXe1Rpu/n
	 v4nvwXh6olpgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5BA9C54EED
	for <ddprobe@lists.linux.dev>; Tue, 24 Jan 2023 10:43:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167455698573.25460.17757747657055239583.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c201ce85f8ae8a9b13d8b5b82402c1033f232c60199412519511d7c0414cd475
Date: Tue, 24 Jan 2023 10:43:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674556985
