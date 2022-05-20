Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CB462F4A
	for <ddprobe@lists.linux.dev>; Fri, 20 May 2022 17:28:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653067679;
	h=To:Subject:From:Message-Id:Date;
	bh=94QWMB18Uz94ZF+Qk3jcbmIweou+8tZetwHYB5f9pos=;
	b=EtZlq9ToxEE4WkJV94WsTKat1hi/+20cWWGYJTe//9hnKRuYEhfnGkT6eGL5nFLU
	tpmjJNfnWmEKrqvJG9J8btlorkVX1VPeUgFwtvTattL7VFWL7qYRRPN+2ixjq+uybW7
	5DcZKP+3GWYx+gdu6MPZ5/0Ub7EwsiLWipnlElwE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653067679;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=94QWMB18Uz94ZF+Qk3jcbmIweou+8tZetwHYB5f9pos=;
	b=dbIwUY9b5HQaCh3gRKWoq6fWZ9KL+i3eeR276T8dTCviYa2YwHTgMWoX/QaGFNOm
	Jm64Wu+eeEATAXWk2vf692LwCAg9rSOckTZzKOrrPWuwsNunSn7vxzz9V5ejvvMI4NL
	ChvTOuVd+YcWcsLjbnX+35HGfNeQun0uH9crYQ34=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e283063a-2be4142c-7be7-43fb-8b6f-189a944a9b76-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7f274227785062313d09321c3d000d4167f25bf2a5eb0a14733ae76898de59ab
Date: Fri, 20 May 2022 17:27:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.20-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653067679
