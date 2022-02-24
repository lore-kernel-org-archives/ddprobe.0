Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 430B27A
	for <ddprobe@lists.linux.dev>; Thu, 24 Feb 2022 15:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645716984;
	h=To:Subject:From:Message-Id:Date;
	bh=a6RrA+E0+kvFcS4ohWk2wPMNLHMKnZOedwoQd5329Ug=;
	b=XX9Bjgxyh8V5GICxQWAAMjMHLzTfBh5uzA7FfC/eXJD2acUOG1qIr0yUuWXEOako
	3YsDoVEZ7BICq+U3RqXFyz5rcFHEcNx98RQS6JUeHHcddjlZD980sctHbY5d8zwcmFF
	QwhAnBqw3eqbAccg0VJxQG5w+7968KNkiRu96wBE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645716984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=a6RrA+E0+kvFcS4ohWk2wPMNLHMKnZOedwoQd5329Ug=;
	b=LQghJPQu0rNI/NBJZ1Iwgu4bEpw7QXo+iR7iRiVw2K5FubxaPLIWGeSa1uQa5KAo
	faRvtEaXkhs1nBoy5jFXqewktXhzd8D8DmtvLjZ9X/lXw7b97arAVtLpfCiMCd2+eNd
	HtkALeSnoJZOtnIe79Mm0u2NLKyn3V/mrIRNG9jg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f2c6053b5-ee6eda60-42e7-4ab7-bc36-ea9de3e81faf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 18c216706458a4218243f749a8345cd5b9cbac90ee8fa14a323c033bfbcf83ff
Date: Thu, 24 Feb 2022 15:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.24-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645716984
