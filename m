Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2751317C1
	for <ddprobe@lists.linux.dev>; Sat, 21 May 2022 04:26:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653107159;
	h=To:Subject:From:Message-Id:Date;
	bh=8AR4bxH8veacjeGJRPu49eJfVVWscUwp4RUEqbB+DZ4=;
	b=dMazSozPVn4h1u2PhufGOjLZxaiS9Zq5vbpVv6jBZ/wKIWwre2FaLJDIeRKMK8n4
	Q5N/puu22Bq7+o4/BX0bDIWSewZymQtyuooXbvc64nedwsIYMIiGiOQEJEjrH7d48qK
	h0mB2OQkUXTiRqIfVnMzQFtmjKHaz6sNiDXvmw9I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653107159;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8AR4bxH8veacjeGJRPu49eJfVVWscUwp4RUEqbB+DZ4=;
	b=j0J9oicmCw5o9RDpvGUm8XM3HY1BgnaPGKzPu9lu4AChYGszLeX9NhsAHM8bverj
	MR2BERHccwAuyBD61+JlzxQaO2mobA0adhlw6pZYfp+2Us8uMYzOLPcddvLHcvfIimz
	+9oBP+fdJaCLEm1+AUVrZ2JTFa67/hx3q0VWL1U8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e4dd712b-dd8df7b2-f306-4284-a1a9-c4e5c7e5105f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 129d399bbbcf34a4296b7726dd439c5059b68fd3ec47625e8fcc1d717b3f1e6f
Date: Sat, 21 May 2022 04:25:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.21-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653107159
