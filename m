Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A134627
	for <ddprobe@lists.linux.dev>; Sun, 15 May 2022 02:07:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652580479;
	h=To:Subject:From:Message-Id:Date;
	bh=6sFnFDzrk09xcJuGKe0ibI2qWHDhHqT+XzYq/rdVPPY=;
	b=j0wh+8jUUhmRIRFJ+J5j1pl7R4jFNRf20ICP8y0aYs0JmVbgJMsU4WLqiVkDGz2B
	I3J9O+Y0+XfYMSx7QvCHfcxrREzXiX4Ob1JXkTiXmycCqTgZikygFEvu50chZiB+JkW
	+QN/tfh+rF0RWNWVU/HvMwFkX4Imxhi8enUJQEEU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652580479;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6sFnFDzrk09xcJuGKe0ibI2qWHDhHqT+XzYq/rdVPPY=;
	b=ASdaX11JDZ58ckpdEwGpACLZIBjS/59w7/FH/euaOo+rAsyHxBaOKO191KG678rc
	wCidvtjFr1fRQLVIMAG5PFE0wLNsSp1pD5QHwVfvi9wdqogum3DQ/UP9gQc0zMJjlNq
	weE0BY25Su3NXxkfMBxqqviP/Swp8hTd+dOjxgWM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180c578f149-ad6043e0-8cd0-4f31-a726-8aa8b9cf7e68-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: de696324880b15193076d1881adb3aa742edf9e933b976e8b376348394aabd2a
Date: Sun, 15 May 2022 02:07:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.15-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652580479
