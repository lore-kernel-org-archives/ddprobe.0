Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E13A07A
	for <ddprobe@lists.linux.dev>; Mon, 14 Feb 2022 07:10:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644822659;
	h=To:Subject:From:Message-Id:Date;
	bh=oSr7yB4rHr/BrR1ufjdJfUNSDzbwqmH7dxYDKD5uU40=;
	b=l7XfW1BitOd8y6v65gxsrBsv0Kh/QTKC39SifV+h5PoVZanW0KdZ03El0Sw1ak8v
	VEr2CIIFE6aJfXbNACdgrVog+UI166Dd1i+JjC/GJaxJYeSUlhRRdJQyZFQpF2yipz7
	3fatUF/v7iZNg8L3EKEbBPsBkAFq5JU/ImmIf5o4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644822659;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oSr7yB4rHr/BrR1ufjdJfUNSDzbwqmH7dxYDKD5uU40=;
	b=fXlvqZ+y+Adqjqk57dTPdQBF32pmkc1QUprQpthn/hcP67Q9WmnNHFpDtdqYuRnR
	mDHbNqD7fFarSRxbO3gPWrGdADdMGiDYysu616sNGdBBRr58TnapiRjH4St+Gp5I27A
	4pmIuBmu5wKhsIsRIvjRvDaTMt3V9E6eso5CWkB8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef711ffc5-dbc8b654-fbba-49b9-9973-15fcf26eb03b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 703b21c5df67d7031d635a54d332565a8e3d823645a7813b41da0f43a4a01058
Date: Mon, 14 Feb 2022 07:10:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.14-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644822658
