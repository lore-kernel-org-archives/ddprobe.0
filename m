Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 001807A
	for <ddprobe@lists.linux.dev>; Sat, 11 Jun 2022 01:37:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654911479;
	h=To:Subject:From:Message-Id:Date;
	bh=1yCQHKuJytucsbhpR+gXfy167O5uKCSyjtGg5m2PZjI=;
	b=lT7r+ixuXnYE1KUhUAB14pAxKf6LCbbjOmxSLDtJN1o3eC3enJjqaPh97LFb/eej
	qUr8/5SHG2MoIEuSeV4ARW4GJb5OYIpLtUtWZkWPHZx8TEhvQHzV2X9fMoFtW/YZCSV
	ssjgWp3w4TjmOD9agnA5+pk8DrrjJjSAYedn3Fbg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654911479;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1yCQHKuJytucsbhpR+gXfy167O5uKCSyjtGg5m2PZjI=;
	b=GRtqI+2Zrvf3bHHm6NTodI+ad7l16uTuY/ZvXYYv987vQGLDsSpc2HIvx9ATAtUB
	ie8JXxaXR3VbYbVVooAvic+oXh0a7quEwj2jGkjxO930/2ocDXilaR+dGNPVpAikVjL
	iKRof1B7ip8TLYlkX5JcNltx3JK4TUMQJ85gsklY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018150692dda-114b0e9b-6ea1-4dbf-b67d-68bd12251a3d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4ef681ffeb51c1742c538f9e4d9beb88eb9dc697a3d5352b086743a1a9a8a8f6
Date: Sat, 11 Jun 2022 01:37:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.11-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654911479
