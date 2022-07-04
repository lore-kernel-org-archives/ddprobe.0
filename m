Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ECA715A3
	for <ddprobe@lists.linux.dev>; Mon,  4 Jul 2022 01:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656898012;
	h=To:Subject:From:Message-Id:Date;
	bh=mjHb5CfpLKHB8hc00Bdo3l71B7DFSMiryQjidoqB2Ss=;
	b=jkS3xoD6ZmkX7JzGRPgBEle513qcLAXojAkNr4uhRJoWEI1e6/2dfw/O47ZtU7HP
	qTNgEtUo/k9oLhzdyRG1YGGTNoEPR63fzZ6xWtw1Eq4GRMkdOrl7QD78v4v+Gu0NfEV
	9WNpo1AUvPXHWAinw1C1Qny31LHlqEpTQwW7q9W4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656898012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mjHb5CfpLKHB8hc00Bdo3l71B7DFSMiryQjidoqB2Ss=;
	b=N612CxblfEbIqibxT+BxXKtbHWJBoRwiJoy4pgDDkrrzPIeAwCSm+m7BznjPgjN7
	IbpcFxJEf80m0b7RO1aWGdfGeXjgXOhZ2oOVEu8uLYvvVJXkbRM6rjQPFBDFjiABym1
	NoKiAOGhK2o0m/fS9HTgfe/203bhH9SvwGI8rInA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c6d14499-ab73487f-d68f-45df-b55e-59d84081571f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d25558c2329edf92f1ab14b5dec75e403a604a285d4e1aed8c7a8a2a346d4f8b
Date: Mon, 4 Jul 2022 01:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.04-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656898012
