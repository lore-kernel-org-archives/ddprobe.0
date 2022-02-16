Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87E8C2914
	for <ddprobe@lists.linux.dev>; Wed, 16 Feb 2022 15:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645026984;
	h=To:Subject:From:Message-Id:Date;
	bh=X/v5PsbrUS9fSIUgwEQws2AVuzFdMbfbGGbSa3btfdc=;
	b=DCvJ4M2fjwhgKPl4n+ypWy9G+nmui+sqGEIiSjqZ6f4E+4Xheb7cFefJCbclrQo4
	f+uzy9CRRudjq9WJDpmCxS5CRzp71IVTJL9bPZc7dRflhv++9lNaJyrxFBch/bBnUX0
	RCB0XV6HnIzrk16KTeRJ5VR+aiF0MJm8KSZudcPI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645026984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=X/v5PsbrUS9fSIUgwEQws2AVuzFdMbfbGGbSa3btfdc=;
	b=UGJ79K2jiEktBkFqV+VwsdBp2D8K9lhvAlxZ14XGYb/SHpOoKphNF1oOOY81ug7y
	V+hL2q5plGYGYjGT7IyFhWq4MxWinvdUFbvp4741IOqvVnVFvCzIaWmGBRIDH2aUJM9
	65xFD8K6h7y2AOhoNyGBqRQZbk/gM67pBH1Yzdbs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f033fc34a-0d4b40e8-3c64-436a-8d7d-229e51b3fcb1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0929966375d8b8e3f9c60ced82a6847be6897be6b9de64533acd8c9f2f96c241
Date: Wed, 16 Feb 2022 15:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.16-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645026984
