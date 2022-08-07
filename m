Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B14A7A
	for <ddprobe@lists.linux.dev>; Sun,  7 Aug 2022 14:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659883252;
	h=To:Subject:From:Message-Id:Date;
	bh=rbiuuywAYROGRnXUWz4H/Td3KOsB8/dUZfn7dsf05s4=;
	b=AKcpMRP/2arM11Ni+nWA2uqrVt7MLUJuS9s1r1O+2LaolNiJuTAQEYXZERkOVi7V
	Ki+K4/gHZqTTZ/lZE9KIci4Z4cdu8lw1Op1iHOw9lsFN8UpF/VC/tYSb8W7VITY92ZM
	Lgj57Oo6PnfNGPbk2THSYfBWF2vYbotPLPNq2vek=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659883252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rbiuuywAYROGRnXUWz4H/Td3KOsB8/dUZfn7dsf05s4=;
	b=dBY0p5wzOK3RZ3+zGz06COYqXlOOjkAKZqS8Kd3sfbnaciEQ5FlrGxAAu0tprkZ9
	EYtAhCs7km/vokERtMSYtqMUzC9a7BlaU77AMzCa6tnF1hUYSt/OpD66HakDe8lVE4U
	z98eScfhGLjDW9gG93qjC+UW1o44w7indz5UOiqA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018278c06b38-9e2c2105-a12e-4c6f-8a8b-beaf8ff9b4da-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a1d57a005f38e02e643194f3add314bf1d2e3babed35b1380a4b478aea7422b0
Date: Sun, 7 Aug 2022 14:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.07-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659883252
