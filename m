Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CAD010E0
	for <ddprobe@lists.linux.dev>; Fri,  3 Jun 2022 15:05:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654268699;
	h=To:Subject:From:Message-Id:Date;
	bh=mid6M0rJGe9Whw/mQXsSVmZOtnKxebFxUURhP1f1yPQ=;
	b=KQQE8wD6TXBYGTJFz6SJQdsrfc8RHzPmsWU9x8kp0enbJdQHaVluvBdGKiG5AZAG
	01IIZVrxuXAkQEfJe7X0d1B5Kiw0qh5j7NJ159eth+k48Ku+fPOVOvt4q9TUEH1QDV8
	piO6N8EUERC1r3VZyut3I+Ck5w0TQaOuFI4gNkPA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654268699;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mid6M0rJGe9Whw/mQXsSVmZOtnKxebFxUURhP1f1yPQ=;
	b=eIa5yCLPG1dVRsRxv7JNJDX6/seHYQFRr+hE5b9BjpsL1iXW2sYRSxM74nQ4clUm
	EWTKfzYOaTfvyuLMNdvOOxhRrpy6LNTqxuV5In9bjMHSfMRO/KvyfkAUnfJ6VVX74jz
	koiecPI/f7JJfXYlvQd16HvTsDkWK7bXCrL6rehg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101812a1922a8-874ba28d-4d6b-476f-bca7-8a1ca07f752c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2c04683a217fe8981b37fc5c635e8df93de7384e82217311fa7cea528817ba79
Date: Fri, 3 Jun 2022 15:04:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.03-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654268699
