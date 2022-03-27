Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 902AA3234
	for <ddprobe@lists.linux.dev>; Sun, 27 Mar 2022 19:05:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648407958;
	h=To:Subject:From:Message-Id:Date;
	bh=d1r3jrdGHc5akEyA5BtB9aACRMa1UJmlesh00c0c2eQ=;
	b=lJVmVEg79OFkzCIDz8GhBaGKg56thb2UCVEMhqebaiURpUi2FszYevfet637Puzj
	777khh303v/1EwR4SMx+wVGT//nN7EMINnUR8xXnIklyFHkncuJrF6RJElMXG3Kzg3z
	2qGtI7JhaLMwBj8jcOo6Myvx2uNBp+97T1W9N0Jc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648407958;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=d1r3jrdGHc5akEyA5BtB9aACRMa1UJmlesh00c0c2eQ=;
	b=fkkVkh9TqutlXoa5tLyEGd7CQJWe+Pm3HL+zgZiDn5275fwD3F9hMsmHZ5sYodiv
	9ZX/k9mRjc2LBYUczHK27yx08ZB+NETBdjkHQjU7zdCuhYrqLlb/wp/ZhcVgyBt+m7V
	Cx1Vbgf7yJSA4CdJhecs8hSBVs85k2KHDV9B4wLo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fccc55315-76cfbf00-d297-4cc8-aa33-35ed4c81a5e3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 053a488ee4ab8b848608b437c65b20e5af9d383c0aad4d05154e7482a6e466cc
Date: Sun, 27 Mar 2022 19:05:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.27-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648407958
