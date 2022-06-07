Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFF3F28FB
	for <ddprobe@lists.linux.dev>; Tue,  7 Jun 2022 22:31:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654641119;
	h=To:Subject:From:Message-Id:Date;
	bh=BRn6j4oK+WrflZ9inW+vsj00Nb6BeA4Ajc+bbhnKsfE=;
	b=D1/QqeCOtEdQ5zw40Vk2VCAtftBpkXREc1qDPIHcVNtTVHlkMm8E2NfN9WIGyYg8
	FKhU/MiV5uG5gWtyN3ezOsLHFW6LHGujC3ATjqYo1JVf4oAJBNeMN9t4ZAssvGRUA+r
	bGzqBfA9omBrnERlux25+YNR1fQz/QNpjrIezDJw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654641119;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BRn6j4oK+WrflZ9inW+vsj00Nb6BeA4Ajc+bbhnKsfE=;
	b=kQEuV2aRS4m+yKBUuzky3oD0chQE0PDGpvf9zh+DYeP2EwoBSIyTXnm07SSpPz8I
	qCkOuKjBfQq2Sz7cLeo4qwadJsa5Y0gbu8Bl/lr3eJbQcqEE/aRD0HDDQ1zDhEPrgKR
	ueHxqVT6LfBB+93siqh5RP5oB7spaqFNI1tMBYxY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181404bd03f-d5692400-94db-4f8a-9372-3f69876a860c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 900080a1a9fb8b01cb84d6c41e9a586a5fff8c37338c353a22faf8f14d6efe0a
Date: Tue, 7 Jun 2022 22:31:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.07-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654641119
