Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D76547A
	for <ddprobe@lists.linux.dev>; Fri, 15 Apr 2022 21:41:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650058918;
	h=To:Subject:From:Message-Id:Date;
	bh=wWPA54d+WYNFvoXNEoT8pYICtfbsi9Gq1ThCDIMkwpw=;
	b=fqGEK/sZKFEtrJEnqe6tSeWGDYIErfFu+ytS0ODl5sO54og4AteOXfYLByT/eAmB
	CEA25Echy+/jmx/GK41A3IeeGX/loUuPUMcgN700r3hSzQ2K9NQkYa5KSv9dffTRzv9
	eII896Qulb969HT9R2jNi339GJlwaqgI1cs9T8jM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650058918;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wWPA54d+WYNFvoXNEoT8pYICtfbsi9Gq1ThCDIMkwpw=;
	b=DOg/NlhUUcKA6h5eDwuKAw2hxdWSYKYoQl9uQuVhULPvphkrrA0lM2ZWZCDrHZim
	L0UGAu0TXjA1ws+1bLPt55Rlef0Hz52nJ6BtugdxXQSDOb2cR+kZjrktGWJyD1DAKt+
	A7qIEK8a2dZecmaZSOpN2OtwIvJs/5nDkZKWttxo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101802f2cf994-61782716-e4d7-4fe0-b08d-4e5a1a7e6beb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 619dcce490faf57e7aa7720fc736211fa761879a40e5dc047053e49103879fda
Date: Fri, 15 Apr 2022 21:41:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.15-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650058918
