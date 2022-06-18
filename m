Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E83EB7B
	for <ddprobe@lists.linux.dev>; Sat, 18 Jun 2022 14:56:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655564219;
	h=To:Subject:From:Message-Id:Date;
	bh=6z4EaP5JRVLKx+kAQeIb1e7QY7ZM+owsfqQfIYhQJfQ=;
	b=B8hWS/dTKqowzio+InZejoonZutiZdtkEQUJ5eZZ/8YdG+2EreIVLfVV7HFkL61Z
	nt89h2qpBdzr2CdgVEzYqdsnvm2MRekWOE4TbjfumVk45NpUa8bJQu/lrz1AynzYiNz
	2OvHR7Bs945lwZjAnVRlmaTeah8qHGqp+4/HEFM0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655564219;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6z4EaP5JRVLKx+kAQeIb1e7QY7ZM+owsfqQfIYhQJfQ=;
	b=aKBJk/N4qexgoJH/aislIlH20whid/uQThEH+N2PbQPBzWh2k1h/asLtBO0IgND1
	eSVdMN5SxSAuTKHmM5pznLRbE1z1KC9O0hgY4AadttM2SaNCbeEtnD2C4FeERn2AQO6
	AdEI5Dhti0DB/w5Hj7zF6/4zkKiJ/zao7zU+iiN4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101817751335d-2b18c6e9-5082-4ec9-8893-98e32ce40713-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: efd75a0d8b4eafdceb9d10477a309ce44bc2e2a305e6007d8b98dd46928f7ffd
Date: Sat, 18 Jun 2022 14:56:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.18-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655564219
