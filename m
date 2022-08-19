Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4ADFC2F52
	for <ddprobe@lists.linux.dev>; Fri, 19 Aug 2022 14:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660917652;
	h=To:Subject:From:Message-Id:Date;
	bh=oJBt2ctLuAEIjXiMghmPbofmWNkLaeVVMY0lLY0M4PE=;
	b=S/YN477HDtFeu8DZkaE1INO5ppZOFPYiU783Hdn9TPVqH1lQ1L3iYB84BJTxY1gG
	t3ghVKjeDp3AYuqTjTjwyH70awWjlrvOSZ2oNNelJJ4bsvIPItCL6UI7cbn9/yDYhMo
	UpEfJ6GbUn0inCzDJ9AnYCDg435gRhP5VGmgx/QE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660917652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oJBt2ctLuAEIjXiMghmPbofmWNkLaeVVMY0lLY0M4PE=;
	b=b9DSMeYdQ9Ob9K5402z1eJkIM4JvbYL+KW+UIxTBM2rJXomsnTXF+mPB/pHUInx9
	kUrEMK7QGA7vmQswQUFE0Lk7nhPWtxoc0S0t2YCe66n6OjW7fbQ/3K7zpxfEheOf/l9
	FzaPVPadRryPj28+w7AVNyKjmLSkMTvQYsv71zAQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b6681c7d-e80d6f8c-6e08-47fa-8dce-d39f7af9291f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8af19a9abb233fe62072a7e9f670a04de5471fe2655e76cf78bcb8748643438c
Date: Fri, 19 Aug 2022 14:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.19-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660917652
