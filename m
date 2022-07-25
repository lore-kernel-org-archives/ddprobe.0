Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F548372
	for <ddprobe@lists.linux.dev>; Mon, 25 Jul 2022 04:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658725012;
	h=To:Subject:From:Message-Id:Date;
	bh=HZb2AUCLaqg6UA2Fr32Z3qz1ch9PqdAs2ReZRzKWB2M=;
	b=a9wIReGVLYbo6GO2kRwDsz0hrA4iJ4pNED9P4EL15f/SWh9tDfvh2CJrK1EYjGSg
	LSO4FJUz3GLFNr6GuAxPRcmZEEIgXq6H99rFwZEpogHe2Rmi2eH6YTn3lKyOV6QsGQW
	vGqNyg66n5v5jO98VDOb8r3/CkN3z+W+OIFWtUjU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658725012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HZb2AUCLaqg6UA2Fr32Z3qz1ch9PqdAs2ReZRzKWB2M=;
	b=EQ9mHCgnhNpvTcsG8POUEaWcMhIdPa8Hdsp4VyxynSkGJ5tKUHXTexbPBZZQa8yg
	U2uQ+vXU/ql7kyiWDjBFLQQ0XKjfVGro/oC/KHJ9aHdOjOF7o8C3ORg+kdwUA2gtw6+
	sBT++ipdS/xSM6+1zKeb7/RqJ7twgWBC9/bMRwNc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018233b71352-e7fef78c-044b-4434-8e0d-da789d81e92f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bf1dee8ac7dba5b7f195c9987b84b5b5295699e06419a5435acc5bb185975944
Date: Mon, 25 Jul 2022 04:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.25-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658725012
