Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A6952C80
	for <ddprobe@lists.linux.dev>; Tue, 10 May 2022 19:27:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652210819;
	h=To:Subject:From:Message-Id:Date;
	bh=PSwCf0lsIxONPEAG8P96nWqk5SWEimOJl/niIgN/6N8=;
	b=G1LPbDmvkTXR8YFNzZueDzATESZlH7hgjAKVUSZ99qR9R0Ny/x6Q3ZQQO+vCrXf7
	pbTikof80HBb51PvZ0DRvLmJOGaPeUQOWqKBc5ufBRQdZMDtR/oTH+iCs/m4fyOYnyN
	k5K1KbsmKzWQsL9enbxjxBuNZo/y+jx4ktrLf4Ck=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652210819;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PSwCf0lsIxONPEAG8P96nWqk5SWEimOJl/niIgN/6N8=;
	b=WeWcj20TOdZ4+gWxF36VRXZj3ZUVxzXFeWSEWTPmpuWcrSqXMerSQ5fxeSWzyt0j
	Ajk64ZqpdsPpo0p/1awkoG9fdWBPDyyiZ1eNoP/ql4IFjoEqNNO/E5X0QCMK6ndCtvt
	SKlS1gUoUn/KWBMXK83hHIYPRTlkL5bOxFf9GFrE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180af7060d8-dd6e487d-1bc1-418f-819b-122b2cd14fdf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bfa2fe52b04c7f31f2400c0ca4071cb6d2a3cb8e44897641b018a275c191d611
Date: Tue, 10 May 2022 19:26:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.10-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652210819
