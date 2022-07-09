Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21B7E7B
	for <ddprobe@lists.linux.dev>; Sat,  9 Jul 2022 00:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657325812;
	h=To:Subject:From:Message-Id:Date;
	bh=PqX2rsJHvWtPs8y87xCPcRDiDKb/3hdYOH5G/9DVhXE=;
	b=AiersF1zS1OQlo2vC91C/F6XhpdK+wuc5uVIi3qUfCs0JscoTfdh2c162H8qBcZ8
	tMKQTlZWAkdLOOOHD4RC9HaoaoWyaDeTotSfQbQOpoQbZKt0JrZLQhQMl08HX3aArhY
	7PfXFfTwO+BrZOvqZ9RGBxcdy+Obg/DgCAJVKuJ8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657325812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PqX2rsJHvWtPs8y87xCPcRDiDKb/3hdYOH5G/9DVhXE=;
	b=i51hkkDrv25SAClhmFscMWt7Lm7GVdy4IofCtG8BNtDzYLpczC6fpJjfwiZqdYlz
	mT1cx1Jvduol88wGDxRczSehXXoNjch2pyRfAXcCL4aCC/yAScN8AKJ8GbY0Z1s0UhX
	jlooJ70vZXuU2Ly6MIfLML53dHBIV4FJuqk9HgXg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e050fa6f-050d0612-8019-4a61-94be-77b3bad786a8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b4016daa7beaa3954c2dd7c30c6a469efe294f0886286d1c743c8d7f9995041d
Date: Sat, 9 Jul 2022 00:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.09-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657325812
