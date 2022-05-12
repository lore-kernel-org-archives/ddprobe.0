Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE5262F28
	for <ddprobe@lists.linux.dev>; Thu, 12 May 2022 22:33:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652394839;
	h=To:Subject:From:Message-Id:Date;
	bh=VCS1kxl0n29dLF1I3nRRW9q4J7PPMd1BBGEOJrxVygE=;
	b=Pg2k0LoOwmJ87LAno+xkfGbrjzVqzXSNhHiFkfKMBZ3WtajiG3oz+7rS6ut8cIO7
	g5qZW2cxP4UXe6VaMSe/tytXR5j6kW4jVHAVLojzIDeOFb4HpM82kG8wUF19T7K+DHr
	n++ineI6/6XX8fbrbeA7Jfa8uF8CF7qc80bSqjTE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652394839;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VCS1kxl0n29dLF1I3nRRW9q4J7PPMd1BBGEOJrxVygE=;
	b=QeWNoD0MZAiQgzR85kAv1xKg04aHvY4gzSgLNgss08uv41LhRHSN66W0h4CBhzI0
	69x8iFZi6r/m6X7K1pDQjqwsu6kfp1cT7Nr/scsfiFXxax8CqVDoaoN3MEtE30Xht/E
	tS5UdqieSQlYCB0Ilv+osUcJymFbJy5C9BzW4Wes=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180ba684d0b-8ac381a8-a233-4e0a-b09f-6164476a8b3c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ce43f4364cd4f5e19e6fba13b7a5b9c194ef6edad446179aefa2af47dade6e04
Date: Thu, 12 May 2022 22:33:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.12-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652394839
