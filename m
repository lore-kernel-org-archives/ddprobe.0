Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34A507E
	for <ddprobe@lists.linux.dev>; Mon,  4 Jul 2022 23:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656976612;
	h=To:Subject:From:Message-Id:Date;
	bh=Yix2AqMoEwFw0DtGCvmueQh+4OQx3LLvh3ZuzYY6foo=;
	b=bb1tzNPuOy4KtHFfjrLgu5HJtHRepKVUiASweHGchBzYtvpa6H7EhCYy2+Ec7H0B
	yuJMNMvc0gpqSWwXELZE0aGkyej+fhb0e0c66tQUcZ4DDso9zU9PqcJ6wTRW34bP1Go
	WhMC+DwaiU4qpMy2taeH4PV5t4KZK4B/gjRLN0a0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656976612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Yix2AqMoEwFw0DtGCvmueQh+4OQx3LLvh3ZuzYY6foo=;
	b=VRcprZjOPCeM31YhsOfIw2aj5pAzamvGGnu6isYttayVUvn2UOU15vSA1k6uSLa6
	/gtWgLnQLz4NvSzqtT8dHqmXNfw0BUYArHJhSqzHD7wnBmNhLwrSnZRIz3c6I3mh9Ms
	wDWKgK+25EjWNqeCLPD8WqxlEo+1KOnO/NXibx+I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181cb809c1f-19fcf320-91d1-45e8-8793-35bd829cc661-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5dd99ca908105b9cb212ec49079f7b6846d2f3db4250741e3b30b1e9e15375f9
Date: Mon, 4 Jul 2022 23:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.04-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656976612
