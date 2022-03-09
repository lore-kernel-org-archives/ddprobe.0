Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1934C7E
	for <ddprobe@lists.linux.dev>; Wed,  9 Mar 2022 11:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646826085;
	h=To:Subject:From:Message-Id:Date;
	bh=oFmTqPI7D28xmbemOaVt4qwXAeIb/hdFjqyIT40930Y=;
	b=XoeHZTqgM+uhzIMV2NZZwVEoZhxmkBZDsFdj8YLyJiLup/QsSgeQUoq2IAwXwnnU
	jLIEYnCRWp6dVLn51uMALAIYtWV5RHKR5RZ2QZMjuryTqTVrFIcZS5A46KeT4fW2UoU
	9rXQVxcr/fwvCeO5q/nlACK/hw1St1riFONg4dLU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646826085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oFmTqPI7D28xmbemOaVt4qwXAeIb/hdFjqyIT40930Y=;
	b=gIuDInlhXgTSWXH6981GctbT6PjBY93hEv3Sk1SkXClI0wH53bSxk5PvXu/ccjOg
	DyUMcTNTWYE2io3ekUIEKgVz0OfHOooXhpbzN9o5qrPgVIFNco6A5jwH1I1gYhs6ML1
	++Im3AoBPSfnMcC8k3t4By4nnnE1fG5KJpbPnFh8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6e7bd9ce-758abb30-b8cb-4f51-99d0-d99831bf9df7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1576f6f6cdd55314787a5b586944eeb679bb11eb32edc70ebb90083ef82d5c7e
Date: Wed, 9 Mar 2022 11:41:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.09-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646826084
