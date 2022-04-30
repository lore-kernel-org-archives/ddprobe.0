Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34D691FA4
	for <ddprobe@lists.linux.dev>; Sat, 30 Apr 2022 14:36:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651329418;
	h=To:Subject:From:Message-Id:Date;
	bh=RdWDXCRElAQTmjKyD2S/fuuZFRjd+SPbewzwxySMn8k=;
	b=UFYqcmtveUsomrEVoMwX36Vqbq5OHRzshUxnpdO23JHQG5HvHopm+afahu1whFmU
	iKMvLC02UWo7NkqoL2BzMQEPj/6Hjc+r275POy4oum4UzjNOSJxKcOU3cXZM9UuoxoT
	GpgjKqBzq4khrcLCJqUTKC/OqLydh6R10/7juE+Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651329418;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RdWDXCRElAQTmjKyD2S/fuuZFRjd+SPbewzwxySMn8k=;
	b=CDuRTzRnQ4dE3mm7snTVjxoqmSZXMTaZThgOY043C4s5h47KzdOOyEDe9ao6JIqC
	DCzMk+qkkhG573X75vnxvGUn/5wmYAQfVRobK+RppcWODkOtQ7/wvXeEVtV6UopmUUO
	KMarL9PlUWN1g8ZyQOY8Y+Nu8EqFZFHgp697F1Pw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101807ae743f6-7de112d9-014e-4a25-912b-881981501927-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8d4d0c84f3475d3f386399f70b364ef4ebe400aa9e1722bb6dd72c17baba880d
Date: Sat, 30 Apr 2022 14:36:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.30-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651329418
