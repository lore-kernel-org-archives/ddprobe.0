Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 203BC5C88
	for <ddprobe@lists.linux.dev>; Fri, 22 Jul 2022 21:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658525212;
	h=To:Subject:From:Message-Id:Date;
	bh=3rFghyBVgHbQuyN9TyWlsi3TzfrnTA/HnxS+H9yoIHQ=;
	b=ivjEU6MRMu1PllK1sGSb+upIm/i66Xyhg3dXSmBy+fgUs4V5RYQchn/nMuoTY0qy
	v1gY68wfcSE+4WlEApxBlwqw49lWU2h+iUoGK+CFpKH+hMZV4J6EBUKIYiU1orDJqld
	Efbyzcu6gvKtb1u6HOkY+bzcI3gbTbQW+5KM6+ts=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658525212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3rFghyBVgHbQuyN9TyWlsi3TzfrnTA/HnxS+H9yoIHQ=;
	b=cpAbI7AJHAARrG/Q6xxqVD1Sa7aqDoao5aShs4KPRkts6S6tL1IF83mifkQGc5tD
	Kxddxd2UN8U36LlUekotnXaQwFXW4hWoOc3KHCdzCUd+OnxvxOOaWxMXbG4iR2Q8lz0
	TW9efvt4dFPoXuhkFcWy86QI5OJ5OyOYfajb7rfU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018227ce5e6d-8d0f0c5c-f6c1-4109-a53f-17328c9fd246-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c8100be36745e3e52e1c03292a60831f0937ac25080938233950675a6e5d70c2
Date: Fri, 22 Jul 2022 21:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.22-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658525212
