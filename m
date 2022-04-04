Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 078C62917
	for <ddprobe@lists.linux.dev>; Mon,  4 Apr 2022 11:17:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649071078;
	h=To:Subject:From:Message-Id:Date;
	bh=pSQWsFsBNOc/JJIKSM1ohI22SU3HxDeKVnmUQFFCcFo=;
	b=Yeh+X3E2qcdvGqllSNxBh4B8ZKwh02vqH8J+skTs9JLrP/M9/2DQQKpjLL1Jaj2t
	TRxRVxPlBU45rZQa72c70KFIFFJeqxkYiRYlMU99NZRXF6qD0fccFug+DOFVfQFYLjN
	l48E5lDDj+XAtAlbwdqZcOtzkJ6IhLN+BXiaCFFM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649071078;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pSQWsFsBNOc/JJIKSM1ohI22SU3HxDeKVnmUQFFCcFo=;
	b=i5vYlHmZHGR9Uv4n3TCuAvbjWO9cn0naV7D8xA/wgHOAMgHrEc2NV3JIpMNDfqSj
	/ThFcDvHarl/FCmzONwUQSclw922xhRzub8evD8gN3YFGzOdbB0EZx1j+FveqKeo4bv
	av1GVZRYAvzj75K5Vrl05YbzxjS9+1PXKYxgLvMo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ff44bbb8e-a94c6ea2-6a0e-4dbd-8a2a-524cc409cc3c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 089f68c9277c75656aa94c0138883422cec47a167602e5cfbe58648ae662d04e
Date: Mon, 4 Apr 2022 11:17:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.04-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649071078
