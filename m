Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D59B7E
	for <ddprobe@lists.linux.dev>; Fri, 20 May 2022 07:33:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653032039;
	h=To:Subject:From:Message-Id:Date;
	bh=xayAMwpOcZ0spfPKfbnt2RUmZLjnTJI6D1XSxxUaiRY=;
	b=Tk1/7+cSa7D0s63zPmuRkuSxmIsykkw+iITp0ERN+4cYn0YTAakGW9PyF1xYdJlu
	5jrkX15ZL7yq9ItxwK+mrq6di1C4rY/DIrUiOlswEz472QnyZTLEUVLtKJlqQqFs/we
	gDY3fECq+LlcSlcK++eEzySN/wb742BNoFLzqTQ0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653032039;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xayAMwpOcZ0spfPKfbnt2RUmZLjnTJI6D1XSxxUaiRY=;
	b=OC5vrUWFxuFEcNTHcP/NooPzMqzwYGwITaXz6ChaMcxPxjg0cYH8PliS+DrcU749
	1WyOyEiF8UkWPA2Ig5XdHc/4/K6v5ogT3eieqxie9z2pllr+q4GpF+YJsabYZZSdSQM
	j8WXw9R0p3qFwmKRnfyxGY+dWoT7p3Mvu3wTb7uQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e0633359-a92ffd04-9f41-48f1-b09d-038f9f9b9323-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d675ef6a1055783173a3e9cd3d5b60aecec9357406d9b99ef63b52e3068f84fc
Date: Fri, 20 May 2022 07:33:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.20-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653032039
