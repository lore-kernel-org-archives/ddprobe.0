Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66EAD3D88
	for <ddprobe@lists.linux.dev>; Mon,  8 Aug 2022 17:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659980452;
	h=To:Subject:From:Message-Id:Date;
	bh=uHVDTwZGiN1dRAKTkEpRy3ThU5jZFMhL/F8KyaIOR1Y=;
	b=CSsC6xyCP/uflZkDUefkKkZhuhEsEwH+AP8hnXAaK/4nXbuxYaYuy3D1AqlQRFGa
	+zx60DzROg4yO9Em928K7J7pZISuWjk2UoMt6TJ/pxAJwR+CMmnY8jsHjBADgDGqDTy
	tP6xLwBrVU870uHenYnJhX0/TaV28QfsyGR55XQk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659980452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=uHVDTwZGiN1dRAKTkEpRy3ThU5jZFMhL/F8KyaIOR1Y=;
	b=ULWKigs/h8CwT7Mo9byrdlS4HtqOBzo9u4fR7JiVMM1yqy5AFdcTDwOWrvWQFwwB
	oh55bn5tsCEI/XDRYBGfbI/A2g01unEIyljRRER075GsBc9JUwMY9hAdWGvYDLum2df
	EI0xp60kMYSMOpJZmvYxj0DIn1XFKOtAtnsxH0mc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101827e8b92df-9c55564a-5b9c-40e0-8560-48978c5a8579-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 22b95d87cb2a827461f4e028778cabaaf474b604dc008e9aa853ae9a8c249119
Date: Mon, 8 Aug 2022 17:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.08-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659980452
