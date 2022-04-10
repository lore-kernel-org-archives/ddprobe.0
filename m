Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FE08137A
	for <ddprobe@lists.linux.dev>; Sun, 10 Apr 2022 18:20:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649614798;
	h=To:Subject:From:Message-Id:Date;
	bh=e6GEyyecx+32xQ55llwGP7ie7WaqKVvnSR7u3wZOvio=;
	b=bNgaNXaYv6Zp+ntKcJs4XS+LAYf64BqOmC2bqCEpW5Vn91UMXR6NFCrfx7+dwfcN
	yVas7TnQcO6UsJhElStZ0nDzkyOM9O9NSzfS1FVQGExGvZ3cOsBrwgu391WE15xG4t3
	5ymhixjz7kIR59xMJQqQJ7HKMoNaLXQ5tX5Tn2Fc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649614798;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=e6GEyyecx+32xQ55llwGP7ie7WaqKVvnSR7u3wZOvio=;
	b=PObLEl1OngIQTvoNrITvXfRnfK/hUOdQG8n8qNWrfRYWNVMfc+e5Y5WnAP8dFjZX
	VrSjIRsd27pgpjCVj2COjxuETWbKlIxXo26F7iBk8nju9P0QZdTynYbYEINGvLlqmqe
	dy1PtFWJGkN+CqT+31q36WRVQ0bDWGrWnukuE0o0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018014b43db5-f0fd8c27-8579-4ff9-bd69-da649f9ea3e8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9d13783fc35d03f363df1cc52d43d10ff6cfe11ce96b686db0d8f20abe7a0215
Date: Sun, 10 Apr 2022 18:19:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.10-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649614798
