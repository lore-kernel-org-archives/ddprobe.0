Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AA3620E5
	for <ddprobe@lists.linux.dev>; Sun, 20 Mar 2022 00:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647735084;
	h=To:Subject:From:Message-Id:Date;
	bh=ertwyOs6jI8b5JUgcz1sqL00wRMr6BcX469BhAv5Z18=;
	b=V+q4nGvp1CfLPXlBk5GsGQb5VyTiwG7iPkY5KgO+UpOX9gaZWgckxbe6UA23NKS3
	hroXyfeAWF/Nsjx0/pAaylOjUbIZ1e2PRthT1B5QQrk4fY7co1oVI6RhqTbJfxs9OY9
	dzjcY/C6kGfZowkEmztaLeLz1qPhd0ykCVyZlwVk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647735084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ertwyOs6jI8b5JUgcz1sqL00wRMr6BcX469BhAv5Z18=;
	b=ajHZyOj5DRsdnEEgmdMiY9F3WWvrm+iHYWYCjsCr5LHi3AWRpnxiBfTfJhzobULe
	8d/53uvjU6dOILndE86TgeK6Wxmd8M4hCqQ6LeDdfbk7/3woL1gUTvXZ141lnu3jMIT
	OC1kkRhNd0Q3jRb2JE5N6CnzH9NbBiVCCe5SG0FU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa4aa16b3-c61a97e9-3340-4e1d-864a-519967a411b5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c9d6bc5add15f284a6721bbac45f96f7387150efb9bbeef24ec3a9617fd8980e
Date: Sun, 20 Mar 2022 00:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.20-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647735084
