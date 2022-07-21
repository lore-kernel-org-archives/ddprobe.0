Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1910E28EA
	for <ddprobe@lists.linux.dev>; Thu, 21 Jul 2022 09:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658395012;
	h=To:Subject:From:Message-Id:Date;
	bh=ygKnuVNulAc/8SXKBo2H0VGad4RYCwIfhJDkv8AJy3I=;
	b=bCEBSMHQi69Q8UUEMZFHWDNz+UJ6JL+OQq5FPJL/dL7NMo0/2vUcwVlnryc8ZveU
	CgxHDCgAZFv4GbENGg6w0DaQLF6r6seGsDS7MvCu//LPeb/u340yVaATuxH04264aR3
	pPwNC8/Kbw7I4XIqNLQxN3BVnrBm1jXaIKNz/E8Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658395012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ygKnuVNulAc/8SXKBo2H0VGad4RYCwIfhJDkv8AJy3I=;
	b=CUdCoppvsp3GuPa+c+AyHiyTbzP2GgLhW6EjOYtGrLVv/QDOo47lAjrRTK0ydWhO
	VS+ibcxg8FwePjlURP/u2Y5T7esM69nRT7mAPcW+L7BUWdivp2S+bjvNVGJ/nWD6K7o
	sgvQmYgQNV7q5FMl9Fr2lbBBVvvDeowuJN9DUDzI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182200bacaa-66dbc5ab-07d1-4b19-b91b-be0bd50472f4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 57935af0f977f33450d7bb8457a5156b086be9cf92ff447ea4657e5529e3b1a1
Date: Thu, 21 Jul 2022 09:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.21-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658395012
