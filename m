Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFAA07FF
	for <ddprobe@lists.linux.dev>; Mon, 16 May 2022 04:56:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652677019;
	h=To:Subject:From:Message-Id:Date;
	bh=LDMfOsoRrmcfG95gY1rmrb3W/9ygKi2eeeWWRC8wkSg=;
	b=R41mRiuTcfG0VqxQH9wIn2LnLDjhEfw2W7KgGUAe3jwfM1sorCe1Va9i8kiV5mF6
	ZBMhxgAYXHRV6vPmhnh+9U6cuoJltcFOb0TzYNri8KaKYrtjtRjCHzwDiMlvIgfdFjj
	PNQxpGmqYJsgcFCxIvtM4PsT7EuP7obYEMnKxnCw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652677019;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LDMfOsoRrmcfG95gY1rmrb3W/9ygKi2eeeWWRC8wkSg=;
	b=JQL4jCIN/C9EHReIg6V+63gEJdY6cZuyeDeKAylJ9IKZkaTwfT/NDyCVGkhFg+n/
	RLeD6S1mrsV7TtLohwxIkHEOQtzTRsdcI1+YCNLEHF0ClJCVpuZuRrOsWY3TRHIxrR2
	DOoL97UViSoF1P8Zai6eCHo8sK0FnMedDr5XzCKw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180cb3a06a3-2b9db716-0909-4c1c-95db-b1bd41f5d642-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 94c12328b7202b6230f4a6c1940af460babd1b7c5c3a07f1fd07bc8a95894cf5
Date: Mon, 16 May 2022 04:56:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.16-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652677019
