Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DB6B17C2
	for <ddprobe@lists.linux.dev>; Fri, 15 Jul 2022 00:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657846012;
	h=To:Subject:From:Message-Id:Date;
	bh=Xwgt2b1wx+Cex2t4zrntxU9yokPhUmBRRBcco7enNoM=;
	b=fTWxCZFx8Pa9jPUHDCjSQpighEtHcll21GnHvV4HieQ1fGj1GGrnoTYVP4uwFAgx
	UB7pst6OSRJTIsblYR9XmCvGxY31EXIpoOch2cQGbGsmKRAOdiLOU6eDawvWdatZ8+a
	+J95dnYVEDbD/CafkrSZBDrIFhzXNa2jxo1ExnQo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657846012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Xwgt2b1wx+Cex2t4zrntxU9yokPhUmBRRBcco7enNoM=;
	b=KQCjxLfkDMHSWUv7USmo5a7llexRES1VScmRYJPYilj2iKe1Kj60Ltr/G6iJ9zL4
	fF4uCqRYGyZYeGptvmOHBl9Gk8O0ur2MR8kBYR2Hg2nSnDKgOqOgnp8lBsFVTnikp2k
	lMAmaxxse7574DE9mLIIDIF16U1QZeLDKKYou5C4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ff52998b-484c7046-aeca-4a98-9cc7-bba93bead7e9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bf5c879477dc3a340c051bccdf86a2c7cecdb8e3fe4af45f037b4315a2ac76f3
Date: Fri, 15 Jul 2022 00:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.15-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657846012
