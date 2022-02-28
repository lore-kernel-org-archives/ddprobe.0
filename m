Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6806C320F
	for <ddprobe@lists.linux.dev>; Mon, 28 Feb 2022 06:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646031385;
	h=To:Subject:From:Message-Id:Date;
	bh=de+BCQQC8WvkQHlzOZdrEoCEqL+RVSjymMW7cNDTR+M=;
	b=lKBjOWX4tNzqOoEBMfWt+dNApGGP7pwCztrT0hkPmfrKxeqlML9rJcZfJoh8WFkL
	iPjfMbxcaJUTQIR635UksCTn47hW6QmPuOCbB1vAzk+SAnWyE3ZcZiSiHc7yIIkxyDU
	nS/aW9oVr2yeavoIhRqaADr8ZsrCf/i/8LTQEbBY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646031385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=de+BCQQC8WvkQHlzOZdrEoCEqL+RVSjymMW7cNDTR+M=;
	b=XkfFitc+QMqxuvihyFGbmoc9jl0QEf1CjNHA6OQJzbc0cvOGEErTuxKm7bfvXBqd
	nRezS7GcrDu6jSBXErKE/P2a0v5QaUyg6rFcIua1vDsZJkjeoseOYT4YAki60ET8j7H
	BIr3op0AsvlZxQgn4dGT1gLqCPNCCZIsIs3ALxqY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3f1db111-c07d3c29-b9d1-4141-b03b-ee0f8aa7e9fe-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 21acedadd4e9a0df753502db36338423037a4e6b7de1347254d8ce7250cf57e5
Date: Mon, 28 Feb 2022 06:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.28-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646031384
