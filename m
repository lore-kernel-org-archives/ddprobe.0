Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E7917A
	for <ddprobe@lists.linux.dev>; Mon,  7 Mar 2022 13:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646658085;
	h=To:Subject:From:Message-Id:Date;
	bh=Yjr6nOrlooLkzvQWyW8XaPOJOYyL19n03BG7CESXUXc=;
	b=QVY2fSW4hLVTrl8wYPCqVG4Gz1cnIuqWDpvidOmYnRASN+0Q5nslndeKPc2uxODQ
	DJ/7AeQy3bHhvzqfSWOHRv2R92LC6wVpKvZpA/ro2khAQL47eQNuDRGCW4hQ42sdrd9
	DVplNcD5dtiIXcQ3+Fdm8A2FaUAGXFdlW9vXgqNE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646658085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Yjr6nOrlooLkzvQWyW8XaPOJOYyL19n03BG7CESXUXc=;
	b=hC9hOxT1lEps6Re89Ewt04Ud2A65YYmzFQmJ7FJE2MGyUSgSjLYlKjEKkg3IKq/A
	2sXAvu8XQveE+bHi75L8BYRW94jjWhqnn4VpyVR34K7rsg8zamIfJWk0dqgbezNpvij
	zgbzZy3STfjg8ei8k4ul6f2/j/8qKW6ZNFjjOGyI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f64785fad-beed013e-95eb-4296-b97f-5284fc561534-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 420ea5de3727a842061153f81bdf68206b97fad5d541ccde11db70e922a97025
Date: Mon, 7 Mar 2022 13:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.07-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646658084
