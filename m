Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B36B371
	for <ddprobe@lists.linux.dev>; Sun, 21 Aug 2022 14:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661092852;
	h=To:Subject:From:Message-Id:Date;
	bh=UV6nboh835gSInpuBui2sFL/x3yfpfyqYu6bsHL1t0c=;
	b=LaRRJSvIe9zgC1xCxXy541RQ2is5gvQMd+UU0Q+fYRAtB3FakdR1QwdxTDlGa2C0
	v0Zy5lUBK4/4i2TTdpUvXcfl1Z0gQKWWay28DGs81CL+SPHIqcjJCFbipKH8Sr0eY9x
	WTIWe+rCpYEzzY7c7mhy0hUsL3IyywrSYDvzrMZ0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661092852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UV6nboh835gSInpuBui2sFL/x3yfpfyqYu6bsHL1t0c=;
	b=UseVNXfvthYIHiQ6eQ0bd0ypeM9ulsNZspKjMcVl5AIrfqRfO2k9Iw+qg3Z8coX4
	N/PJwLJvAGAYOZAl2WY2q4dSXPox7lqNyEXqUfgMli0XnX1KPrkh5vgruECFMDggPp8
	Rr4NCz6UPvbuofpkYZK0rkyXIL/bIFTP0EHH/CT4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c0d9736c-a32cc546-e5f8-4804-a842-a9c6e58adef4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 84e28725f51fb679b2eb6c34275f1282e448cb42eaf9c7446ce451b91c6c3d90
Date: Sun, 21 Aug 2022 14:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.21-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661092852
