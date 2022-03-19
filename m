Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 962267B
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 00:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647649285;
	h=To:Subject:From:Message-Id:Date;
	bh=QblwXf68R4YCjJzcdBPgaWVPKLq2k3UIUeTcNfYLg5I=;
	b=DwNPurBzeDqbGvX0nMuXROW/FLg99esZXmEESjw943x8eVvoM1X46+9umthWYem1
	1sWKxhOm6a6HeE7+ic/v9rw1iVslHerK9hq4B4k0ANLqNbO7zx0axmi/aqPsIfsFrX0
	pRR18wgM2Ye9PNNwJlujd7OADnAX+HhCvxTUeUm4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647649285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QblwXf68R4YCjJzcdBPgaWVPKLq2k3UIUeTcNfYLg5I=;
	b=EXTnUhDdzyFTNiRdWdXNsq8khkWRc3rqNsnc0900bxb0kSqFAEa1GXc7VeOUeUTw
	Ms3OR0tK/76xQC5cYI8AC7KTYi2XtqVhz0a+kPmWjfoGHRZZUUbJma+QS/87FhhTjx9
	Jfz64pMmX0Y4UXCuFrNkXkMIsy/Ne3ul0M2sZc9s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9f8ce282-29a633f1-fd03-4021-a11a-c23d09614759-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 97dd4a6ab218f549580c5caa0ba164ee3ab1fa5877db53d265fb2ed22ab9975b
Date: Sat, 19 Mar 2022 00:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647649284
