Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8BB662FAF
	for <ddprobe@lists.linux.dev>; Wed, 16 Mar 2022 08:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647418285;
	h=To:Subject:From:Message-Id:Date;
	bh=u/EOhvKf11w3W2nZ5Tzr/JYmzYeopi2Eob2DvkUVj9s=;
	b=JoKi/AqxRaEPG6716tL64Y6DLSJQvFEjdpuB+PMMk5fW27Bb6BfBmXKHsuB5Zf4d
	zu+j4ioBsd3XTr8M9HLcRnTC9Wi5tlIRmHxZcQlzjBdSajOJvjrygRTjEh9mj8I9f25
	xaVVl+ILrrp+GUysEh55J6b5IUJm9GVZ9uELM2Bg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647418285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=u/EOhvKf11w3W2nZ5Tzr/JYmzYeopi2Eob2DvkUVj9s=;
	b=O5EDwDEOF/fHwmLz0b/hEJLT80zxtToMEw69g6rawYbLKkT+m2Hzx+L8dtbDc5Vk
	3Znul2uWZr1k7wOrXeRjOH4nSRDkc2n2ogts7ixDuHE+5uzto+rO6fdW/Ww5b3Y1RHt
	0laVCEm1tkAlsqbeA2qH/vSQCCv0QoZ0+NbdgIcE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f91c81ae1-c8e6351b-ccb8-4a49-8de4-9696c18a0827-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8d2c1352b70565c34c80d0b30a495633583190f481636c285da204f3066501f4
Date: Wed, 16 Mar 2022 08:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.16-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647418284
