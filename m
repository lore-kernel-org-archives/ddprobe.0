Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66B41623
	for <ddprobe@lists.linux.dev>; Wed, 27 Jul 2022 00:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658880652;
	h=To:Subject:From:Message-Id:Date;
	bh=KaGxwBfJx4Lu1o4CR5OogBCPM8/xSTAqD62Bkhtxno0=;
	b=Q3Axc+JvSEy7t7PFKzC6sTVe8+96Jm2vn3VRsz1mDmOYgZi4S1lZlwsOPQBr0K3h
	dxbIt12q99bPuqv24JcWvhPJ2ujPeGrBNyIwM7GDYFeGtPRs/7WLnnVW3JJkYtSySeX
	q3sM+1F0l637dDZjNMmeGDKoPgbu5eDWMYJwHZJ8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658880652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=KaGxwBfJx4Lu1o4CR5OogBCPM8/xSTAqD62Bkhtxno0=;
	b=jgkSGOtqf+3UN1j3zM6Tg2JQSSmVmEYospEMnSJ5bSYeLUNRjTb0mA19muKxACe5
	vaTW1IE2KjNBqNjux3jiJQ2pQ+Gyj+Va2jqrs7Dbb9HyjInt6C+xCIPaC2X89zrBXgW
	0tdMic9g9mcPkbYhh8czfkbP173xcdx+1GmoEh8U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101823cfdf509-c6e6c352-fa43-4a8d-b5c0-574033b362e1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dc5961854a9a12a7b76fd5a0113ac5c198f5208a9df757c759a85d4db3b757f1
Date: Wed, 27 Jul 2022 00:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.27-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658880652
