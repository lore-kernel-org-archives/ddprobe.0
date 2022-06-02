Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6EAF622
	for <ddprobe@lists.linux.dev>; Thu,  2 Jun 2022 04:52:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654145579;
	h=To:Subject:From:Message-Id:Date;
	bh=NIdiNbO72jlPHNYhB3JEd4qJnuUwEYAWLdjzR6VLpPg=;
	b=hHKhfeEDl5W+TfhgwXR5EOu4s6VS1YvuDcET2f6SDOXXFCk9mZyqQMwGhCfJ3POB
	9IoQvOCkOsvy4S9+nZkhUv1C6QRIRiv/XejHGNQP3V5siJx2SLJK1IjvlbvAPbpcilc
	JDkS9zhIYOSh09cMMwNOOKimBtibmIammjrxIeP4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654145579;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NIdiNbO72jlPHNYhB3JEd4qJnuUwEYAWLdjzR6VLpPg=;
	b=VzdOp+1SMpW4FP2v2qFMjT155P7WSeqULnD3rU8JMWQhpzbXxp0Yr78BlR6sT9Mf
	IB4hklc2+nxtlrqZ/drKVkiHyZfcBvWOqKWmNW3GZn606vcS8g/eT+aOIencL1+8U2+
	w9zlO8RTBQdZFS+0mdvJAbJdkACuLAhxb3TYEuTE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018122c27902-cabf5c47-c7fb-436f-b151-00d5b26a86c8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0f891ccb542d2e95ef15079e10cff57e1a6a450c2e6baeaa431ab72886a97d79
Date: Thu, 2 Jun 2022 04:52:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.02-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654145579
