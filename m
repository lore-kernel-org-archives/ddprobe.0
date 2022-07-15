Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 258A233F0
	for <ddprobe@lists.linux.dev>; Fri, 15 Jul 2022 15:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657900012;
	h=To:Subject:From:Message-Id:Date;
	bh=tP+wxk8mmkK3nzsgP/TlRKXmAuiPolifLuI9pH3QS2M=;
	b=DOvML5tugI3o8A1OYQrcroQ/HRqCwrpHSiwgdg34BYaeNiSmON9uNXcglsxm808C
	E/9seSmRRbUm/oReEehQRnLe/hoCin+7Hi00BhmTiFM8GbgwXdNmzsFGW+cN54Ud0gA
	6rlymAMoWMqh25+eWfEt+TPTmjv6urUh9EtZ0EkA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657900012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tP+wxk8mmkK3nzsgP/TlRKXmAuiPolifLuI9pH3QS2M=;
	b=agt7j/gUGjcuqxsfnDvz6m9fjywIJE6xCtRNJVG2XfsgZiVl81W9IM2wzv3Odq4G
	ZfZw166O7CcrV3zKQgKJvOKWuy4amTXhWqfO/uHFjiUa4yJSBAAoEh2hHwIBO4lGw17
	rJqPwUNQL5i9cnwGcEVwZV6kd10zRJ73gw8u8tHk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182028a92e3-1f2f26d4-65cb-4b12-b728-75e1990ccdb9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 424bd4ba3b3080dcf7aba6497466c876482b6942f27ad29a40d7548c1e2ed6a8
Date: Fri, 15 Jul 2022 15:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.15-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657900012
