Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E34815A7
	for <ddprobe@lists.linux.dev>; Thu, 14 Apr 2022 03:16:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649906218;
	h=To:Subject:From:Message-Id:Date;
	bh=5yIKHK4bqlobMVxPishwE3/Vj+Z3BrDNCCOUNJitX+4=;
	b=D0GdWesw1NgJbYuVHuc6yWd0KZY9KAjlZt5Dbl2pfHaSylzWy9F3YIA6XcvvzioN
	/Ny9SMYiBVz8yj9BoVOjieH2QlIMahlCxhVSSpKCrDeSXVAsuiT9LijnxHLe5/7zqEU
	uPIPT2rqOv9lFW1DtUidnQzwJa9QEq/bwz6whgAE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649906218;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5yIKHK4bqlobMVxPishwE3/Vj+Z3BrDNCCOUNJitX+4=;
	b=D76x4snGN7ic00JcRB4L7ufctukO4a/QBWYYocxFxumCcfJTF6xXf6fAJky+8No4
	ox04CUDR9O2qPjKDrQZpnaMxaluEEUrbj9RiBt1QaU6kDt2l8C5REZN+TyTqRCcSA9/
	/5HT83fhef95O0FJF1FMcjn9POMxDpQF0byoeSWw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101802612f51b-20854fe7-d136-4157-9b69-fc5036a6e2d7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8fb13c6492064f953638ea04fb2f4f63149a28131360e85a53c6171d8143a1e9
Date: Thu, 14 Apr 2022 03:16:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.14-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649906218
