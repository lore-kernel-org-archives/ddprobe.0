Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A160A2D
	for <ddprobe@lists.linux.dev>; Thu, 30 Jun 2022 03:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656560812;
	h=To:Subject:From:Message-Id:Date;
	bh=nCMsfdvYtXjOgqc5j7A0oPOL9CGAarrL5kbRu6wLZ/Q=;
	b=WiAbaKrP01YVCuhMP+a6NaDcDMhvHB5nPTwc77DPDiJ/Tc6LnpotMsbaZTLibcut
	R5RcZtAQUYGP+PIhEjs+OBPhWxJ128yZkrZA54/rhBSL9cv9myHKVE9jpnzCflgUC5E
	DoiDlRwHX7Snq3zbwhiupbimxKVJXFjsMtshb2ug=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656560812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nCMsfdvYtXjOgqc5j7A0oPOL9CGAarrL5kbRu6wLZ/Q=;
	b=RDQZSvupQAh5V48RZPkbo8/DSm550DhSA/KpowQLwmHwAzuEyTwsM0Op0yuCpFl6
	Bo0QaqWrbS8H9NfCBcABr/QgbOFMnI2r4ZTfbkgI+grWs4TJXM+OpTfw993ljLYUhwa
	NJ9EByJflOtSkp1iqBK/mN9s2gNiP1feuPQfkRuE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b2b80103-7426e8ce-0f0b-45cb-81a2-09d68fe4238b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9b8024c8db4e92599edc5d9d133698752db9096fcebdafd75e1d5c08bea5c556
Date: Thu, 30 Jun 2022 03:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.30-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656560812
