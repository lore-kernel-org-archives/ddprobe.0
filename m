Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B53517F7
	for <ddprobe@lists.linux.dev>; Sun, 26 Jun 2022 09:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656234412;
	h=To:Subject:From:Message-Id:Date;
	bh=UFWNYrnDU9KUTn8MKjw9nOwfAbNhfa8vt8j50v8Jf8s=;
	b=KovDOQxpdxvOsqIxpp98DzwVpdc/TBux90RdblRMB569N5/DpVQ1f2CVd7bNiQ4o
	vQqd31oW6eZBzvbszmO9AYMGNlCLc48m7KBY6KWAm8pXpolYW2cnpL+EdhCmhKHRdJ4
	BVs+Zc6z6Fib2xvqQCfmFJ1yRCVqyoWUmCfOIzE0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656234412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UFWNYrnDU9KUTn8MKjw9nOwfAbNhfa8vt8j50v8Jf8s=;
	b=VmZrrZA6V9sUNeysZE/yDUwQJuEntDpPcD74drKTsm4soYPVmTyvlPkBO8QU94TD
	A5xZbiTV+ry+ThicRLg+iPQLiP4PdNuV7cGV8IK6hnQWLMPTK1NtDB7vBlIXtaQ/nbk
	F/kt4RnNOh51fVRWBdFMboqqdk0giDdb7uGpsxmg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101819f43891b-a1d4d12a-f26a-443b-a527-3b96d2840ca1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5aefe6be74702ab1e70bf81a3c3a059880a06973a97c2fad9417e65a81bb6262
Date: Sun, 26 Jun 2022 09:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.26-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656234412
