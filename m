Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C8FD23CA
	for <ddprobe@lists.linux.dev>; Fri, 24 Jun 2022 11:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656070012;
	h=To:Subject:From:Message-Id:Date;
	bh=u0UaRefSDaRbk7rjJW49Na4Aa0UJ0WTxSYRYXuzLhEY=;
	b=WeZ92fyn01dVxWQfw4WhtGVgAGjGtptpDtXRE1W9lt1utY6+ogp/faE5II6/DXc8
	lDLmuBtMG2tNQwbCO+CuEySIKvsWo5TYxQkMoDl/OMDZVSBinkKfwd0maEBZajUNYGL
	6WWdiv7T9dFbg7jsAurT+nU//Sp2bCyXee8DqS1w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656070012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=u0UaRefSDaRbk7rjJW49Na4Aa0UJ0WTxSYRYXuzLhEY=;
	b=D8igmqxxXpKdhCxIqjvFhsK35AurFZR/mbSAZcO52Kc7u/WkLMCp1ryMNWke3GvO
	JlwQwjKIkxh/iHbccoxmP2ODfs1BiJ5XD2SyjsR2SKvau3Ca22rkPuH6MlPxmIqOulF
	qxSb6nSRpoufWjUXa8Oy46LNcBNgAGarOowxlvRI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101819576fda0-7b8a5337-09ae-49b2-9c66-3c636b13eebc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7c91c6899ca50b2aa478a754fa262557df541bbfcbcb3508fe687b151a1897a3
Date: Fri, 24 Jun 2022 11:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.24-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656070012
