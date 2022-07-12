Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 498202F33
	for <ddprobe@lists.linux.dev>; Tue, 12 Jul 2022 18:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657652212;
	h=To:Subject:From:Message-Id:Date;
	bh=hONEvkzBKyo/z+CWVeNQ1T3IbO7DpMELfAg5zpNVcq8=;
	b=cRmJZmY+ToqrsnDchD+PkcgCc3sOUgHNYxMAI/ONeIfzF8nCl4Vh+yJlCpwBewKw
	UU+z01Ai2k//Hg5q9NXgyT4edeNp5xlDeuYPeg0ISSMuPVEomOXKEuJad2NszNWXLHC
	FGYKBY4e1yyZ+Ha25y5GqWznTgtfWI79X7DFHtg4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657652212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hONEvkzBKyo/z+CWVeNQ1T3IbO7DpMELfAg5zpNVcq8=;
	b=bFFiKEy/+op7qYFg7bOKo7zBitOKVX7O93Z8cU+o4x8sefz9EyeIn6TUa9hUMmGR
	FBctpFuv469zJH2o2gO/ZbaCmfVA+Bww18UG4nuhatKyPRWOKzbyClCLi1FsY5lr2M9
	M72LuRVMzOPoi1kodQzoFTX5ZYOT/8e2dywOF9ac=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f3c57249-30de3d14-ca53-4775-a92c-d817a7bdce75-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 62b3632653acaab5df43b3a0d3ad3ddb8c80890dfac3a2109d9305c2af0f78fb
Date: Tue, 12 Jul 2022 18:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.12-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657652212
