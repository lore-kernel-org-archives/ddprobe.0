Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81E786457
	for <ddprobe@lists.linux.dev>; Mon, 21 Mar 2022 22:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647900984;
	h=To:Subject:From:Message-Id:Date;
	bh=aWXXf4k7nufEVoGsUMDuupkgsQWuMyBdCZEjx/YsXP0=;
	b=Aw324NUbSFs/KZpnhoUjmaWlM6AAy++yL7g+U21MS3Q4dlY49Dom4JmHZbXsrTqY
	bETpSA7UXsO4Msb3EErzy+qImf3w2wJAhMYGYlzSA1q90KGWpxF4+LmxqlGQfBx1Vn5
	Ee2b0MFJPEa0797AJdCtFHvSUT8ngMyH9+XI3uNs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647900984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=aWXXf4k7nufEVoGsUMDuupkgsQWuMyBdCZEjx/YsXP0=;
	b=Ooxue4cOtbf7Cu4KuYnfEGafZa4NibYyQNIqmQ7NstAE4wkbdBuSJWc+rWmXcbEt
	FQ1n12dhC04rzL6J5d5SMHM0ZeadKkdSoQaqVEwQPX75cLgPWl6GmngMbCrtvtKLMhJ
	C+v3jSD26fb7ax03m9pXafwAMuyPpNqFWRwuozQE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fae8d859d-fe3fa285-d555-462c-871c-a08d65d1d115-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 437eeaa5809ff6e64bddc70c955cefc21a94073a4af43b5c83996484c88a6d90
Date: Mon, 21 Mar 2022 22:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.21-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647900984
