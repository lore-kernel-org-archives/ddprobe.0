Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B875621
	for <ddprobe@lists.linux.dev>; Wed, 27 Apr 2022 06:37:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651041478;
	h=To:Subject:From:Message-Id:Date;
	bh=U2xcs7e8ZQWAII+rQmReMkFl9/W/rTNVpzZTTVjZANU=;
	b=OfS4HwjrxUn9m1Qrqc6/68bxLra8xo720H+x55XPeEk/KMa3M0fY1fwOnvUV7MEj
	leGyEIhqd1vtVhuYNSzrVUTcng+x1Nlm8biCtYHnAGtTqeNEB5P8GOJrmO6C1K0449N
	i89lBoZkynv8UU8HHikojeNqZ5+HwQu7nbIMXihg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651041478;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=U2xcs7e8ZQWAII+rQmReMkFl9/W/rTNVpzZTTVjZANU=;
	b=gFXR77rtkiYbPZKcw7YffXnzCODnw0BzoZrRboOIMSMnsF7IyopQgzp93IQbZWOL
	vjBDX/8qhhS7L8Px2mGi9gaRtxzSgn7wsl2/tReLjqPqfRXsOBbxQxNiAop03fMOUdr
	6SnNW0kmWQbFTB5vquTGzFZrrdNGSMrcVWEPcKiI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018069bda6a6-dda31196-be88-4846-b047-038bf440f4d1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0b4a8439511bcee5b92905d31672c55fc3396e554ceb523b6537cba1a921ba82
Date: Wed, 27 Apr 2022 06:37:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.27-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651041478
