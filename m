Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DEC43D95
	for <ddprobe@lists.linux.dev>; Mon, 28 Mar 2022 13:21:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648473718;
	h=To:Subject:From:Message-Id:Date;
	bh=MVUcXZrJAzu2lahg+di6yWUk/hlzJTn7mOzRIgKhqzs=;
	b=Y30BzfnhXVS54VrfpqOX1ue99nQix0lIoRgZuDKxuOiiW+Vj41byYIcFsGn8JjYj
	e3aGRYeQS3f63jSvgHypqQxXCu0QctQXQYjxPnrM7UOsk/QzjRE3G2sBJ3fOM5h19bA
	uUN/VOsEvk0LL9CkFWg95aiEqf+eOAu8JbU7bLTs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648473718;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MVUcXZrJAzu2lahg+di6yWUk/hlzJTn7mOzRIgKhqzs=;
	b=fNdGMrPez7/5hVqpPjjQpteQea7saH+TpVHHzTL9Pm0RZRvayiDhM9cYCHMlLrrC
	MRE2g9dP6/3NrSsrjxX4wIe/xD5dCJIKeA/OlY/rCQEcZbjSESNID8lnpxI2WCOyxCZ
	ZDAnLHaLB07Yb2RFksPvrfj01rPw/9qE7UY45+JM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fd0b0be3b-fe0e5dcc-45c2-472a-a9ce-5c2f4569c122-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d0b8d0b86d79947247a588bc41483637634a9fb291d80804f11982b4885f32e3
Date: Mon, 28 Mar 2022 13:21:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.28-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648473718
