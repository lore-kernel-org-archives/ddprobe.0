Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 672117C
	for <ddprobe@lists.linux.dev>; Sat,  6 Aug 2022 18:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659810652;
	h=To:Subject:From:Message-Id:Date;
	bh=VtUrulmE9VSSSC6PFjUMfff7+jWhizU9FmQYRluSjVc=;
	b=Nh0vQyGlm5BwqptEfVM5y2HgJ2K+VY3ARLIUm1FiMJtFJRnLsQm0Qai9rFzfuTJU
	jEsjb3CV2w/W/vj8MOY8VOXtMPqdWhBZV2YhT/4BV/0U0h/0hdM51LPypmyHGahNzog
	NhkE92cvZmd42Fx5T5dtqFHyuBXFLl0/K1CnxikU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659810652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VtUrulmE9VSSSC6PFjUMfff7+jWhizU9FmQYRluSjVc=;
	b=dlF78FSV5nTNYPHR54J/VGM/dmak2fZWf0RZGMPD/PPaH0xLe+IlPqRzKTv5yGY9
	iRqhJOJg/U+KDBAcOxvZc2mlDuou0EpbONjJy2AXw//FItpksIGYUW2LT+Kg7zS4SVa
	3oH0rEEkyWFmUu2+ugLj7x3lhXwStO/71N6JFAo0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182746ca18f-68dc7269-ed93-4810-8e5e-5a937159b453-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f79098f9824c3862ee962c55edaa299ad1b468116b1f78fee292c824be39a8d0
Date: Sat, 6 Aug 2022 18:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.06-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659810652
