Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4E042C9E
	for <ddprobe@lists.linux.dev>; Sat, 20 Aug 2022 17:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661016653;
	h=To:Subject:From:Message-Id:Date;
	bh=+tCvYtgbhkcyT1aC08FLIKRd5uRLjKprIJXoIEwFF3E=;
	b=j1VPotaCxPJk2wfw4tQHfdvZA2aYdpA4jpuXX9I8H5EkU73yE6UYPjiIRYS2d8As
	k6SDXdG3oA7UUYB6d0p0cvKUJQK9UUWu91wxaTDFWdgTjrLAWVA3ygbGaZv4fmXbC9F
	cXmyKpm5Z3bxTNx2CRKKbwINrYAT049geZ2al0Og=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661016653;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+tCvYtgbhkcyT1aC08FLIKRd5uRLjKprIJXoIEwFF3E=;
	b=ZUO8I4mXciclB+bmoeQBCBZeUCDizB/z82q/H6IMICKnonZnaovNnVtvTDzJcke1
	BNRPHRppL1Zbrx55f+oRSb4q5nPI0xHBFV4JRTjW/+Zz5lXLqziLbxyohMQsAwFkdM6
	bu/o4yed2cvwz5/l0iyXbjEHHFPN+vXhwANbFTMM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182bc4ebaee-40183069-fe69-4b26-8ee8-f60ad38bf0f3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1bce7f7b1ef8347bb11970f61c55750d7ab22a4caa69732ac06c0cc536ab356f
Date: Sat, 20 Aug 2022 17:30:53 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.20-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661016652
