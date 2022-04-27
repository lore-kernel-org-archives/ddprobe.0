Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76DD4A50
	for <ddprobe@lists.linux.dev>; Wed, 27 Apr 2022 16:39:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651077598;
	h=To:Subject:From:Message-Id:Date;
	bh=Hg1TcQsC8BTewHHBxA7NhP+HPJdvBg1MZnFT1QrxlFY=;
	b=GIrW52hRGlSd9JzX2o70pK6wE0PYU2wG9TDLGnNEf/Jyo5qGQ2AZofKV7PxjnFYJ
	Lt+bLy+DdiIOEYO/Z0chPeCWvdk1PYWv1lyc5UP0sOWz3n4FY3tkQ00HNNBzE4BIMDd
	PVQAZqAIwJmeMmmTBlhk4I3/qFqbxa4ttC8J63bE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651077598;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Hg1TcQsC8BTewHHBxA7NhP+HPJdvBg1MZnFT1QrxlFY=;
	b=aF7ugsIC3MrL9G1rMTRjnDzMZ12MW4DqrmJKb1+Yb95YZ29iQh47lIg5qbaRmTaC
	y0XFt8QVP5LHsmTI0iA+O7qBOTHsSOey1EnFsanAJfmGrqdRQfm6S9Ud6xOoAECAwYT
	ipkBXmkc+DIEH/yBSaV+cdEcse0wyTzVOyZfJF3Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101806be4cc51-7f381e4b-a885-46fd-a94d-ab644d9e7797-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 92dc537948394054950ceee0bf5abf63fd4a51fac287c8b26cd60d59d06820b4
Date: Wed, 27 Apr 2022 16:39:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.27-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651077598
