Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B385C7A
	for <ddprobe@lists.linux.dev>; Tue,  8 Mar 2022 06:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646721084;
	h=To:Subject:From:Message-Id:Date;
	bh=lNNF4SE/U8I6iJCQ3Jb+ciqvY0PmpoMi1NxEZqZSbsw=;
	b=X1ng6kQv/QTIlX1LnfyBqKe902fnr2pAnR2SJdDyjlIBYJUidM1XZNEuLf1LnJlm
	7fo3D8fIut3OMubD1i6iQur+T1iX4Ua8wNFXu6COB+k174LHGUFvpfbcdfY0Nlaw1yA
	tbZbUXmW0W26CsjeAUN61vDRv1o9m85YPTeQaRMc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646721084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lNNF4SE/U8I6iJCQ3Jb+ciqvY0PmpoMi1NxEZqZSbsw=;
	b=iojKJTmzrT9qRv412qj1wT4SORPOaFcouoM/Jj+Yw/gqBjXth85QUzWgYZWUsJzc
	UuMFNGjoSTQUS/Aj27yz74eItb7fMmzgBnF63Dv7zvjAjMqYjR37id/2/egJfxnQ3QU
	gYT4xF/WYSpLgZEeLviH080ThjWEAYGBYeoVrLJE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6839ad43-a06182ae-4a35-4486-a973-d53080a278b7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0ea81b9ba0f03f4818635a62157fbbe055603404fcc3213951a4c47373b1a5a1
Date: Tue, 8 Mar 2022 06:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.08-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646721084
