Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEE211374
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 14:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82A6AC433EF
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 14:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670682087;
	bh=ARt5BjVYjnk9KcUt4aYM+xNrJpg7l2eyaQqmoyplfa8=;
	h=To:Subject:From:Date:From;
	b=rXFpXW/supvcoKdTW4ZZRJlDopRIPSYTRknKdCIVBoEmNEOTjztf3Kd+iLfB3lCUd
	 V9WqVQK5ao4PGUvOFup7SjCVTcGFUgumIQy+q6w9y2kH/eyV+hW3oPclKcyUa/Wz7j
	 YRtOLxzGoYwfd6nQz2KaruNoqhHgCJaGQ1Q7AKjm9A//Zpukfp1Jr+Dw7qc0iPB3JZ
	 9YRMP1kfz62wPqPhIAukHhrZF7H/EKINidNsFsHMqRcLu0lAPDe0d06MZr2TqnZhjL
	 dRn3t7RtduTO+1urHnnDMpwtnP8ezLqqCsTVVS9kccerEFUXyRf9fL6E8Su/PAzl+Y
	 YSoYKxilaVK8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66EEDC4332F
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 14:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167068208738.21530.16996357149283602112.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05dae75234a332e6625bf1581da1170abcc561878a8349d5126b8511501c663f
Date: Sat, 10 Dec 2022 14:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670682087
