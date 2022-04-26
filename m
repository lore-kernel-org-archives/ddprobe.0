Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15D827E
	for <ddprobe@lists.linux.dev>; Tue, 26 Apr 2022 07:39:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650958798;
	h=To:Subject:From:Message-Id:Date;
	bh=skHq0hsI9DyGwc49cjWrde27tVBcvAQXk0YrZqhdAf4=;
	b=SjewbbYEqQ14EzRA7/Kia4cIn6Ey269Ixkc1eqwv2eUp+amZetf5iOpf3icq1poa
	Sb9FnqnWraSUqp5xoclfUcJLZxUcRNI+JBEyYGN5FJBmPdM+AXtAcHSrAxCMagsB6f4
	w+vAsPZdCM/pfvFdKWlZF9nsWCR/f+szinVUdaaE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650958798;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=skHq0hsI9DyGwc49cjWrde27tVBcvAQXk0YrZqhdAf4=;
	b=FFg40tnXdva1w+luqMvY3/jjcHvqUjX+zVlv7Q9+kHoWbZV6FY5z2vlC4Dyy0GRA
	ZIY+Oh3SfhM8FW+QwWzpg90bcdlJnhFoV8WM1VQzAhWX6U8aNFkggqoST4Zyw9CqbZ4
	mgSrxMO3VojumA0sAU5FDDFzgVRqIFjJwY4PSNFo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018064d00dbb-255dfcce-5095-48f2-9120-7b3d5c74930e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0d990dc0f91c17c6bb26246bc676f9e96ae84469a58a03c9478b0555009e9cbd
Date: Tue, 26 Apr 2022 07:39:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.26-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650958798
