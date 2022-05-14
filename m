Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C8357A
	for <ddprobe@lists.linux.dev>; Sat, 14 May 2022 12:40:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652531999;
	h=To:Subject:From:Message-Id:Date;
	bh=fOBPBFO0LmD+o8M8aH2PgQkPKCLN9jxb7ndMTZQh1cw=;
	b=LrYAQd6K3YNyo9TzCluw01urC4AnECuGn5aSEq31hj8ir604M3CE76h6TOLm8rCU
	s8mf6TikXQ2wNxOdyFBnV5fVWxLFxDdhLx47smqooKUnjdDHkhRwkHKvFx4cvzs1yjI
	jOWFDCK5Pw8DkvbG2zUBtoQtDNOtMHCaXRUeHMQA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652531999;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fOBPBFO0LmD+o8M8aH2PgQkPKCLN9jxb7ndMTZQh1cw=;
	b=Lwbl3B1WMROe9xOToM+9neYNKrUO9CwD0c6MouPoroMsw13jIhpi4oCtxKtPleqk
	WSc+zhVflWsvKfaUUpEQDE5ep6UGqIASfRRu3bSEDzH8heP2e7SPyt9xJ1Yh7Jw4urt
	KnlQXtqDLOexvvNeaqJ/EhHKJvK6/2I6E5Dy2LnU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180c295324c-08306bee-cd06-432f-b32a-e416867e6398-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d8798921cf7be8c93ab62b78d724079542c95d9813761e1361016a0c57e6a480
Date: Sat, 14 May 2022 12:39:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.14-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652531999
