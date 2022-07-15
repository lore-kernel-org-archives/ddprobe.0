Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08A433D76
	for <ddprobe@lists.linux.dev>; Fri, 15 Jul 2022 16:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657904212;
	h=To:Subject:From:Message-Id:Date;
	bh=MDvk0HxwKL8QxC2BT84rjjLiUf4VEHyjeYzW+1YF/CU=;
	b=U3gqSp+d3JBfUxYocH8yGr4Zg0JgyMnqI4dOUL8nS8UB1BfpScL/jRhV/kPUU/BP
	jP8TYOTnapthEVyIuWi23NyFm/kiEqH6O/ykysiSXVUaHsdMHsyE1bpKgTjzrSqkkd1
	DoUrACls0bjNyE7q6kqRRMR/h8B115+rR7ytRAc0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657904212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MDvk0HxwKL8QxC2BT84rjjLiUf4VEHyjeYzW+1YF/CU=;
	b=CvF7L7YBXNdEaQVHM7nnAlOgFkcbCqz+kEW8UJ3U57XNanH7CJj4dTDoAI43RTvW
	rUZwjdpFInSYwY9Ntzmx/nVr/0IsES4duJ9NtTlftJ98ZTkJ+zHNDUG9QjXKr3oFQRu
	R1YizEptloTyoSuVtskaq2DdFezp3oLzXzaLiRrA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018202caa939-4eb6eeec-2f79-4e92-a502-6734e9e92004-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a7e73d9c00ab03d1ad274d17b0904317cbd4cfa9dbb3d758cec56744dcd6b84a
Date: Fri, 15 Jul 2022 16:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.15-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657904212
