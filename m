Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 709AC620
	for <ddprobe@lists.linux.dev>; Fri,  6 May 2022 20:39:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651869598;
	h=To:Subject:From:Message-Id:Date;
	bh=yak2EVvOgH5gI7Q6Myue19cLnSUe2TdOLtxe8YtMc/I=;
	b=IR+E1zTZ5i/8XJzjR/lsTqKnEgbZ7uUfpaAZwN92JZ4BZmwhJNHjnuIS0H0xC/re
	97pL3EO/e7sRZwxQKqobVI9rXLq8IFrK16gBwMuKBNOV45tSHCC+FgcELz2yYXyw7YV
	/A6MZTbATrQoU9pT7WRMFDGHkYQB6qacSQXgt7Ic=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651869598;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=yak2EVvOgH5gI7Q6Myue19cLnSUe2TdOLtxe8YtMc/I=;
	b=AEyCEZ1aNnhugo9uZXrgBOjAJ7+lLiMqpMw4xFTVF4kvde6gIW4D7IOfXJ0NQKf6
	mss5UZyYqLPtCVeX1DJf17T4qrao96YQZZ47nOSJF9JuC31ROb7giUGxIBM8EtyFuH1
	ghY68I3IbZFHL74B3MaxHwxVadwwo11TUyF2S1tM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101809b19c22c-7268120a-2af5-4243-b2e3-9daed7fd268c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 21f5008d4990abe870baeebb60bdd5ca6823b349fd803648fe815fe0934a4ea3
Date: Fri, 6 May 2022 20:39:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.06-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651869598
