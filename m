Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 008AA3215
	for <ddprobe@lists.linux.dev>; Sat, 26 Mar 2022 13:10:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648300258;
	h=To:Subject:From:Message-Id:Date;
	bh=PAJDgzzchXwJcUr0sP0qPl5J3t5I3dneeERDTZvGiwA=;
	b=MwXPgt1XGKF6J8Gu6jzG0USjjhtRssjIeVYTGWQHc9ylDfo1kTmK+vK8vrNSPqKI
	Js243epykIZjuQ1c0iBlnoCzJdcS2XZEaAkVfa2k42ync6UsqAaad37Oae0LxTFmk8e
	HBNTUrmwbpd8XIY09fKApxnUYDAoBmHwwWZn7Tnc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648300258;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PAJDgzzchXwJcUr0sP0qPl5J3t5I3dneeERDTZvGiwA=;
	b=M/nLUPT/Vx6OMsgy86YiFu7P0Ri+N2TenFYhLg2rlnlelC4hqJmMghLvHWyCp36d
	ylLjFfQM5KXyLvnw8oC3AJb7/MnA1oLGw/dZm9/yaYtj+TJAKiLsLQtgn0WZzTSbwd2
	O0RxAwpdYY+4CuifkVUJfOobF6DV61fJhOU9GwUY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fc659f3e2-6a969150-bb4f-47b4-b3fd-974b41b8dd6e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: acbf930eb66b6fa7ea371ff2adb2f3573694a94455b24b38bf6718498685a7bd
Date: Sat, 26 Mar 2022 13:10:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.26-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648300258
