Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57FDE7C
	for <ddprobe@lists.linux.dev>; Fri, 24 Jun 2022 08:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656060412;
	h=To:Subject:From:Message-Id:Date;
	bh=/KAoCPoO6YG0oiR7dwz0MWTmbVEg8vtztnu2auJHvbg=;
	b=MLIzVqow+lXl14LjnYAki6+SFcN4FvNgvNxQKq+y0trRDPFJo02+MiKUM3JgMlUg
	Rfu5v6C244t7lp+TNc1XnbFyr67SPVTG8RAUWTANk8qbfYrEDqONZ4au5cC4+VOCbKU
	7bJpU26w7Hi6hsHkSyB0wrlXL1N1F6aqyJbEDoDU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656060412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/KAoCPoO6YG0oiR7dwz0MWTmbVEg8vtztnu2auJHvbg=;
	b=J57xucjgFyCYmzWaKe2J66/DSObm2eqBONmK2ZPEmL7FNrv8HtAnBzSsijRQgPqf
	xGJ2n1hlVC7bPhvkoFuYrL8Y6P4zeq0kvB+hWH30BLaxrNDOH+UqmIYpqYA82WS/wr2
	mgIE83vgJBiTI9t0bhzOcusjbeHHa032Vmip0Qfs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018194e48164-5677858d-e1e5-483b-96de-a2890669ac63-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f5cc3ba64780025d3c644f1a10116b05e417b5ee6a567b339c2ad3431578084e
Date: Fri, 24 Jun 2022 08:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.24-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656060412
