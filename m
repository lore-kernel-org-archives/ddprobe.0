Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74F147A
	for <ddprobe@lists.linux.dev>; Mon, 14 Mar 2022 17:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647278184;
	h=To:Subject:From:Message-Id:Date;
	bh=UMw26ygz8p2iUxv9RaqMh/7Vrsev59cfJk3Q9OPMP2g=;
	b=aw1hP/aM0pl0Tc+c7pKzVKdnGShMAABQKmSE+CW0CZrU7chGI5lS03eeg49RfqpF
	1X6QAp22+OkFNJ3xhGKkQjNueC5a86eu7uWt4OmltCDxcgdJvcMr21qUxlW54ILhofS
	tXkwKJ3Kmg/UpwH8H2DSk/OLyOmfp0bbJX1LQ9No=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647278184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UMw26ygz8p2iUxv9RaqMh/7Vrsev59cfJk3Q9OPMP2g=;
	b=j196VkWe6WVfWB6AfUJbKKd5QaZre9BXMwfgs8t/qPcuSaMigeb6g3HclSMHTnOe
	PTgO92bEnWe2EIog2RrUwwwd2akYeSERFUBXJGRrJNqF/jtcFPhMy/OQ5JvhB//oeMh
	OM/+BV0Ua/IuQER3Li3tNwRjKKRcA1NOUi38qp5k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f896e591a-a7888bbd-969d-4df8-95ef-2fd86743d80e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 560de3c5d489b299eefe8c1303dc13fddc6208f0cd79264971b433c6728b3b0e
Date: Mon, 14 Mar 2022 17:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.14-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647278184
