Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 416C63FEA
	for <ddprobe@lists.linux.dev>; Sun, 21 Aug 2022 21:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661115652;
	h=To:Subject:From:Message-Id:Date;
	bh=DH7vL47ayPKBIedVVQccLFhPCVYO4kmN4S6bpOtBg1c=;
	b=Jo4ZHUa587kmJafPw4gIEFcPfKPB8J2mu+/TLPSfYNPXxUsrUOabVozulkQn/OE3
	3auNnqs/xdbp6u2X+rI2rI/DO3Ec8BqvHaFQJ54Tyh924t8QlwcKnTpFWWOiMK5RVpa
	NkBf/Yj6E3HTraySKgaCwPo/L7WkL8QnbbxaNrJE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661115652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DH7vL47ayPKBIedVVQccLFhPCVYO4kmN4S6bpOtBg1c=;
	b=BcHYPUGp+ZkJtmss+oCRaWt8AURZmBiUNjpn6MWeFvF5h/v3jWpyk9WvKccTD3Wt
	qrHY1O+y3U9sFRWZM1WPW9hZMEeBLQ21kVC6mmGg0MiLAIV/NvER/0OSX83DcY5Ptlc
	wVDwYSwLzE0zEXEx9PG0iFe0ljXN/REUO1Amz5bQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c23559e8-f921d813-7299-4277-bf6a-e7c3ef5bcb22-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ca07e4bc874adf0789f89a68c0252edb903bcc1bc22e3e71dbb8e6f2950dc1b5
Date: Sun, 21 Aug 2022 21:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.21-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661115652
