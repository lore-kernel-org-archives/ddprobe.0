Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC98D23B6
	for <ddprobe@lists.linux.dev>; Thu, 16 Jun 2022 11:32:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655379179;
	h=To:Subject:From:Message-Id:Date;
	bh=75C/kX4sMWXJ8v5WP8vcyaVKuU6/Xs0oQJdOCMbOlEw=;
	b=B6Awu33xDSfSIyt6xLo7ihgU2JkB1K4z+BdG18Bya7x9DufOmCzBcKgGUn+zDZgV
	9Z56Ezh6+GzE1KfLyiZKg1EmAMMq3jOWKRCzJ9hbKVLMo/K7Hvndcg8FkSFzySZaJ0S
	pXq7WBU3bYrW0so0hg+9xP3WsvtdTnGpKaTtVpLw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655379179;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=75C/kX4sMWXJ8v5WP8vcyaVKuU6/Xs0oQJdOCMbOlEw=;
	b=hewQIFHZpuLUCfA6+YUainxBhOvrv51jMgWtqftcz1YwST1o9P0ggrpzQAnxi+xl
	/XoUzuaYSXY/bLTsU26I1GZ+Wxbjaq5K8mH1egCjoDm/WVk+5GiN6x0Und6E7O8910h
	o8NhDH5pZj1lhlOLJzzF3XKVSWyP9oMPMWN1+PYw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101816c49b70e-b55ceaea-7d43-417c-b6b2-d410ca466bcb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 54801832801c1a4ad4dac2b1871edaef5a47a2c8f14bd592d183d99b397f973f
Date: Thu, 16 Jun 2022 11:32:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.16-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655379179
