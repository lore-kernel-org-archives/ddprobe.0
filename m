Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD6C34C60
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 14:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647612685;
	h=To:Subject:From:Message-Id:Date;
	bh=lkYgpPUBkapFeWVJH6gp0QDpnNwIJyHlHXur7hOUDk4=;
	b=JOXaNXH+z2CyRnBsVEO8OLQoYvZeQbSe5uDXnueRlUH1gsJJ167tHXyLbnyBgugd
	Ydt+74YMpFaevR5VtJS0aMH5qx3UicFiO3A9YwGgBPKJftQMKxEXk8jYbkECLrJbA57
	GFl5/t9X+18aexzuP+FW/FcLzu/qDPpOGe0RgrmQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647612685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lkYgpPUBkapFeWVJH6gp0QDpnNwIJyHlHXur7hOUDk4=;
	b=aFguXqxSGiohZprjhxO4Ovw9hlbzpyopI7pDRU+x7MXoWDmeM3lpTMbOiZzWJm67
	S0nM2SrHGUCiemxQ7tFd+fFz0g9A6ZktCzRc/cUqjm/AUjRgUO/s63kEB/Zmg3jf+3T
	tXNUz5xDxGJbb3d70OubOSbSJfvsf0jGeeo6t/Wo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9d5e69f8-edc12ad2-71df-4f4e-b52c-dab338c2de68-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0609589a7742266f073a9273fb3c46ede1714dab34dc45d63ceb0fd91c4df66d
Date: Fri, 18 Mar 2022 14:11:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647612684
