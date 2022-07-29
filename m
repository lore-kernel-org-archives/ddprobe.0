Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F4657A
	for <ddprobe@lists.linux.dev>; Fri, 29 Jul 2022 02:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659060652;
	h=To:Subject:From:Message-Id:Date;
	bh=3sLV7YFwXVjbIjSnRJI8e2lVSpzB/6Ln6Tksv831m18=;
	b=NU/uNoTZSSHdUUozOUGITy7nsuMRfCP8EdydVr9U7KKPeoxNvHbO4YfBd669Wa7G
	rcyerW3Shyk0FMmfo9HIQ9AZVAfLHWbZPCvZq6A2GEtjxMH9m2MvWfpfD31hvgSkv7L
	bSC4whd98XA2dwUwbXcXmvTNftCEuBo+cCl/H/Sw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659060652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3sLV7YFwXVjbIjSnRJI8e2lVSpzB/6Ln6Tksv831m18=;
	b=MI08rVHYCPaHPDEyjKlh30/KIYdHQ+HTCuP0LVUcDb97dJEeEqMCcLCcYLuDHmie
	0oYTrWxLZdwmaAsnM4zjrGzUWerAsQVDFZMakzmzdANWewiNsmOM0CyKkgTqaX7R5Sk
	F1Xgo+i/i5Y0OfxmsgvblEd3LFPJbAqQp9h2WK/I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018247b88a00-1f2bf26b-2ac0-4f93-bafb-aebb4648e661-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 82322bc044888af7591a7ef0f9eb37fde516d2838b5caffaf4564b55afd07b85
Date: Fri, 29 Jul 2022 02:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.29-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659060652
