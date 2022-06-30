Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 962D5A2D
	for <ddprobe@lists.linux.dev>; Thu, 30 Jun 2022 03:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656561413;
	h=To:Subject:From:Message-Id:Date;
	bh=15ymFL8XmyUnQnBXaJaljsrLbJIPKR880OzZnfcwoZU=;
	b=auIZq09el2rZnB0zpI3matp1SA1/CX0gDyb5UGdterN1MSALpgxJx0Ew3TyXbIa6
	vhKzHOt/6lLu0gbcdC9SEmGwNaiKAk8B6CJoh/Tul0Es+LBjKjtddbN25m9JB4VYBES
	67gvZlc268FL6m6nABQJDQgd21kYIEH+gdSAPDwc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656561413;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=15ymFL8XmyUnQnBXaJaljsrLbJIPKR880OzZnfcwoZU=;
	b=gFd5SoMQgEm1M13Ej51sWlYcJ/OFJZhNA5V1VoiOuqr6tE1of+OXzhnZC5x3iqN0
	7Kw5aAPTsTzknbcT0mf19WD7fgL6urt/MN3nVu70xfLpiuTZpsLf5FfDLiXVuaMLwer
	XeF2jBIXeNE/OQbFcCrGD9gS6k8NX2sRjLPGpODw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b2c128d5-222176df-5830-4cde-b516-e836da8574e9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9ff59d345477cb45df7e715bed462318001019ca6136b0dcd5482905cea65ea0
Date: Thu, 30 Jun 2022 03:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.30-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656561412
