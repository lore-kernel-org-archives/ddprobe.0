Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60C9D17E
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 12:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647693384;
	h=To:Subject:From:Message-Id:Date;
	bh=QQSXsVPnHcnvDXOLc205Non7kQEQq3xvWIZMvF3jem8=;
	b=eK4EOtCFy6U0yE8F1/UGFYKd6/CTjecZgG+fL9nlsUTsYEmi738sjHv9RkmNEHQj
	4z6U2ViXbDVWXEPOTRtLVTCEDdoszkZPnA+GJFo7h2JWrEltwU1jOXvHj1bcvHoUimg
	qDeTvHdvybMOeAvtI+1ue/2UsglPfh82GAAjfdAI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647693384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QQSXsVPnHcnvDXOLc205Non7kQEQq3xvWIZMvF3jem8=;
	b=QB+cWOE5bpn1d19jLdOkSXKbcuiDb0w9IA8eWImp9JbislCEIu7UT5u2JdMlpTFA
	kLI0pqDxz0tLsXJMdtY6IyU5IRcGyKlAqrRFpjWcA8UKOWIoE4MsCqwsPoJt3FPTmnQ
	tHB3u1DKmzU0KIAohsrsTSSfWiZ4Ohp6XFy7Ukf8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa22dcc2a-9cca24b6-d680-4cdf-b8aa-e00bb36bc448-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 037b5a8c43177d0578ecc99f5210696832fd98f771946b6b7b91f1c4a382d09f
Date: Sat, 19 Mar 2022 12:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647693384
