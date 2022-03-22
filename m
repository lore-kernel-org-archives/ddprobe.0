Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0256B42B5
	for <ddprobe@lists.linux.dev>; Tue, 22 Mar 2022 18:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647974485;
	h=To:Subject:From:Message-Id:Date;
	bh=9T1mgjD/uby9X0Szj8lvOBvmggiSpsqs0k71RghxmMg=;
	b=HDNjoKCsPGe3ciw1HzfiDFRZCYXEIWvvMA95FweFUfhVtKwzw6y/h+C6iMPOv4/+
	PbHHyT5VYgbd3GHZKplOBuQsnqyrjJvruaGNEuFRZZdgZgXjcQ3cKlHYvw2mLTNpS96
	0qvGTOt55Krd1v+ahXWg+0a0opydF/278fyejEAY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647974485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9T1mgjD/uby9X0Szj8lvOBvmggiSpsqs0k71RghxmMg=;
	b=H5HbJUpxeAE2KnmdvVikNU8uImICzgJ+1RiZ3Fyce6fGoIJKfqd934Fk4PIGq1dq
	F/ft0wQMPtAiSte3NKCgbF2zTirL02taSh0kJ7BCUTBX9eRM0LthmV0LV7TFMRUiZXQ
	V7w5hJwlzkNi7Iovqy2s8oySlabb87/+M9rirpxI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb2ef0b01-e6c46f76-f895-4849-be60-9f057bc6c0a3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 84e5acef599b5e1b51c759e9c589d9e764024be8c1b4dc1b8ebb0f976304f614
Date: Tue, 22 Mar 2022 18:41:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.22-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647974484
