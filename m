Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AEFD3207
	for <ddprobe@lists.linux.dev>; Tue, 23 Aug 2022 22:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661292052;
	h=To:Subject:From:Message-Id:Date;
	bh=BnOcgGhYHyS7EJ37ojV+Uw5V79KHrVF2aw89oZCvcB0=;
	b=QYMJy7yeJ6s33dG295TeH7Lfill97UUeP6ZNeBg7vYNjvZiGR5ek8Q0EGUGkMfhr
	aXSxqt/8YMjg4/Kj+3V7UupOwYta3AjgMUpTNWs41pbSiBkJ50RoG3TYLjytcIuH8Gz
	5V+/dV68sEUEE8hYNNXw+o1kNp3bU31kdS1Ns05Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661292052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BnOcgGhYHyS7EJ37ojV+Uw5V79KHrVF2aw89oZCvcB0=;
	b=d4rGRKhovi53JASaazIO4gAfwZt6y6k9sLYq6Hycs1ol1X3rMVFM61EjwcVJhDHg
	R5kNoNttbHlSmcKBkKg9PzXd/Id/xFM0PYW04HV52QZUT9+BmcBqknDtuj3f4unUfin
	t5vwayOQDg5TrhTkaFVw6OV2FBfhN8WvaQGDQeRY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182ccb9003d-ffceca0a-87c3-4442-8a9a-628d137a85c7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8b49089ad9a7065821b931673a00959582e82432ce7c34f85895a9515b3e2019
Date: Tue, 23 Aug 2022 22:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.23-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661292052
