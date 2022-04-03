Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1171D7C
	for <ddprobe@lists.linux.dev>; Sun,  3 Apr 2022 10:31:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648981918;
	h=To:Subject:From:Message-Id:Date;
	bh=ZboQwFig1Te+fbXeVhq2GbOorroP/mI9y485xOhBTe0=;
	b=X9NDLBp6C/yVmSmcc8WyOIJ6YqYc6ruY9ls9Lvv1iBpf67ldQlGoXEDpGzdqoP6q
	fj0GGF307AB4HMjmw3V2g/ZEgzO3c/mrIiNeH8vg/H4lCqpog1Lb6i3PWHFjvNc4ydg
	wLKbzTClXMT9YCik4zy4hoFEIATvjCRFBe6JxiLY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648981918;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZboQwFig1Te+fbXeVhq2GbOorroP/mI9y485xOhBTe0=;
	b=ZH8KuiuqOFYjKSnXjQIQPtMQtOxzFfRMvfpiJnoc3Hxzqlp4UBzOSFC1HwBVuEJt
	Ps9HOOOX/xxDS6XeoLvAtmRPcGZ9V12e2r9T9YFdQ9KRZZhBF8/o4JRZ2S9YgG1Kgwq
	ys2yy99BSe2LHZVCfrSxZnwk2G8lhOVQPi0d/Bew=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017feefb424a-9c791888-300b-4d4f-938c-3e594b3ecf18-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 57b5b400faa9d2ead64a82f62e6cc2db8d7eb7d6a58821df113456cec2fbf18d
Date: Sun, 3 Apr 2022 10:31:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.03-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648981918
