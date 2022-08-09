Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 432004403
	for <ddprobe@lists.linux.dev>; Tue,  9 Aug 2022 20:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660078252;
	h=To:Subject:From:Message-Id:Date;
	bh=/VDQKdHkLwkRhZ66pqy2GFuQPp9tuRvovAs+xLl7t4Q=;
	b=Z9qQb0Y+9XpZMa9ca1Sj5g2XnRriUu/ZaSmDCm9h4SAfWbwPKHhwdPC2WprO/DN9
	V6G4yrvt4KHEMIApN/fWPKr677O6K713SeXMkRNtJhVJK24DwqG/hnSbbyo4tYZzLf7
	2t+SUSRDAUgvsVpi0z+mdFN+sM3qdAFn6jRTrmuM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660078252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/VDQKdHkLwkRhZ66pqy2GFuQPp9tuRvovAs+xLl7t4Q=;
	b=GiEHlTFzk8Sti1tryPZDbVA+hao3FYqMl/Rl7jmkUEUa1L/0sIKnMVB6Q0Tjp6AN
	HJ8W1lc06gMmcLeELuryVByCQE9aFk2MRAqE0ZBvs0J+J1YZ1+kPpIwNvLcnQlIczHs
	JlwbQ30Jv6Rme8QOrBqxt7ENS7lIEHyMNhxIOqaQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182845fe223-56d28cd4-73d0-472c-8516-d51d81199f91-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6bbbf87c29d6f99b6e3be657b08c3417b210f2bea45bf6e87778ac962f016f83
Date: Tue, 9 Aug 2022 20:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.09-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660078252
