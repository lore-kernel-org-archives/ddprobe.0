Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7067D7B
	for <ddprobe@lists.linux.dev>; Sat, 20 Aug 2022 04:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660968052;
	h=To:Subject:From:Message-Id:Date;
	bh=K8/dEeUoB3/WX0mxlYO524cRSklCIRvWTC4bzN2vgQc=;
	b=ae7w7AIfnPRwmznoeD7WFGxi8ezFKa0rUJBfJYhNS4mQFBhRN6d+8StmJsoKfqAE
	qG77slVBLHmyk6357lgmeK8OJ/i9bqYakGCtfL+j3pq4/HT8awrMLbjM39gw9Fyau3i
	q/JNImwApC4m4JzIT7ywEatpmGujavyaIu9sWh0A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660968052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=K8/dEeUoB3/WX0mxlYO524cRSklCIRvWTC4bzN2vgQc=;
	b=NChLI+FXkLGBwZfgkGqtemb2nph/7aB4URRTMDzepR67IXvfLv8gb/iU/ZiRXl93
	SFxakt7ufS7Hm37SyC4lM2mJaoPqTMMY0IisuGJTUwAISQLP+7U3AiUvFXyuL5F+mPR
	qH7TsGL3jUzHiVRigcQ0KS2xzBUu+b1avozU2NUQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b9692781-8255c014-0cb3-4e71-a205-fafd2d110c56-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d86a7c88e26370a5bf468913ba310b803c78b4bbe7b443d55f6527149e14ed15
Date: Sat, 20 Aug 2022 04:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.20-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660968052
