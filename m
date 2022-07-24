Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 881D133FA
	for <ddprobe@lists.linux.dev>; Sun, 24 Jul 2022 21:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658698012;
	h=To:Subject:From:Message-Id:Date;
	bh=WdWX3b0imnwA3ZdlHeBHcK1nVQDP0S/sdhnGy4NKHnY=;
	b=jYeK8xh/UqeiuzMp31BpfDadpVq+zEGwssgk18RUdggbTw9BpvZ+7i9+rYi88pbF
	He9tSfamuHPFnHIAo48NwRBLfrIyrH2toZwLAlgtbpuIS4Dhp4upU1EKxLuNqwh/Hnn
	AWzRI/gslydI1urioI9McBDbHm/BKx7bP6GL4Dg8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658698012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WdWX3b0imnwA3ZdlHeBHcK1nVQDP0S/sdhnGy4NKHnY=;
	b=ZzlR3ZpwiADL30ZprmoTBLyQSjMr62uka+5OLnGJhXTz5NEqTCq+GkP/oFL/zbUQ
	GsuxUk9lrH+cuFhXjuXitHbaJCzQL/TuAOIkGJmG0cXwYtNC/+WfxsgdJf/A4LPw2/x
	AGAt65B4NMWaqcyHqnjIdFapjIWMxSevVzWuxY+8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182321b167c-4f7c2a74-8df8-4528-aa4b-18d0133b3164-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3c60af8c005b9e0f8eb9d60c9f7684f312c2c106143b960fcc4a9db7f71ce173
Date: Sun, 24 Jul 2022 21:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.24-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658698012
