Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C62F4622
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 02:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7ADCFC433EF
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 02:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671242487;
	bh=4A349S/BJ5thRUU6g3LXyelKl5VfgUsYp9skc9879ps=;
	h=To:Subject:From:Date:From;
	b=fQbaa6xzzqJruXtCghv0yDfHe3+Mwy1wD0dDO1c/++zpLg3ZT5AKvM6ZhkI4ibd10
	 TnjDtRoxWIn6dQeI8IHOnPy3gGJC4IBu36xggBbTvs3AiuYYqPp9Dd2DKGuDps1Sb5
	 LjyS4mXQDjocrSDcmqWMQuhbYdpT6j8Z4LhazLZnJNCtsfETf5PVXHzIFLcNNu/t++
	 ALLYPll3gclhAbi9LBMGJsCqRG0BQHbVTJsfLPtziWmUDjh35RRAvRZ/9AJJ3frPqU
	 k5LozTMxtLrlCkqRJaNZDTENPHL6Dg0P+dKQA/NPvT1KGUnFhsnz1o+oRG0KCoB035
	 7FwFKpa8WQf0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DA20C4332F
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 02:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167124248737.28596.2111927473868149752.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1544a327535b97e5852d9aab49e0d7216b8920272eacc18419b58c7af4ed5b9d
Date: Sat, 17 Dec 2022 02:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671242487
