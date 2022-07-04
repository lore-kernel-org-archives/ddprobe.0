Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 352B615A3
	for <ddprobe@lists.linux.dev>; Mon,  4 Jul 2022 01:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656899212;
	h=To:Subject:From:Message-Id:Date;
	bh=GwlCTuwsPyeNL0egLzY+MtM7VK6LY+sdBNNUYVBwrr0=;
	b=IYoPQ1GASDrVTryiQ3D2NuJHlCD553RNqU030iMst2IhM24JNYcHn0vX2y+DdBAv
	7+nDilF0L9m/wEa+hzKPnOZMilnuK4jpsCakfqboAsEXkR9gvqweyz/JZ7XzDSkkBUe
	vnhBiu2ShVqvjXn5GwycrUQVlCgfUxYtdGyBtUqk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656899212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GwlCTuwsPyeNL0egLzY+MtM7VK6LY+sdBNNUYVBwrr0=;
	b=KwdVuONR41hjxF8DcRRcL6zwipQAXHo/2Q8iX3TYJuH5PloNQba6+MRE8Nk9MiM9
	4JmBybjaTnjwuYTlZsfLCMb08jJVXWCpA0/G8hqLHTLEx8QMjzhZYMZeR5ROhy1TN59
	Z0+wDN+W/j88a9Het5nxEJ/mH8CtYsUZLCyPoqz4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c6e39475-6507a596-26f4-4b8f-a63c-499384932614-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 45507cfe9357d1328cf5771b23d2bda06aa4f55b1cfc5dd98dfc6ad959597e1c
Date: Mon, 4 Jul 2022 01:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.04-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656899212
