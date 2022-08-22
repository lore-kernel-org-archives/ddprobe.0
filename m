Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8DB17F
	for <ddprobe@lists.linux.dev>; Mon, 22 Aug 2022 06:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661151052;
	h=To:Subject:From:Message-Id:Date;
	bh=m6ol78sXAnHva1EhDXAyuTeLQ7RDK/ZJF/xn4Jq8xeo=;
	b=Q0+T4ynaAyAUAp0kFdI4wOKeTCRP89UyFp1+zUdklInMn6kRjagP270qzAJJZmQ7
	aNR3YkL9K0pT4DWJ43HzYae4Qc6+urE2WEaUGWVD0jc6Qnq2+KIlR6aXc/4OagmTUT1
	HdLvG0yBdTJx8qcqbm1sTNqn3ytrDddOXE0vPaDw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661151052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=m6ol78sXAnHva1EhDXAyuTeLQ7RDK/ZJF/xn4Jq8xeo=;
	b=YtqfKdzhxG671azIJdUNfvxI0Tx0HonCL4ZX31G3pctgGHESKsbbZAipR7YmIQli
	59P1q39jKGzPQONqF+hS+Z4l3H19SH7nyXmQ6LQ7NRFipjOVmciAMvDrnMEUGqnXfod
	87ZclTbXtJz/jLkEhl7tgBBCt9LQ7Qmr/J6v+2QY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c45182ec-e1a649c8-ae40-4381-9a05-b9fed9ba53a5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 862c00d5ed0d44b8d97cdadd8c7ce9b12c0179ee3351d43312e7a55fc920714f
Date: Mon, 22 Aug 2022 06:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.22-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661151052
