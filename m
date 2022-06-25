Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 399B47A
	for <ddprobe@lists.linux.dev>; Sat, 25 Jun 2022 07:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656142612;
	h=To:Subject:From:Message-Id:Date;
	bh=KuDhD8SFLBBcWaSoqvY2vLeVi5bSxQlUelU2HziA4hM=;
	b=cXcS14c0JZ0cTPJ9oPZgyTkeRh48WR9i1/l9Im7OJdaCuKHM5Zsf0xE+u2MFMJwE
	67jzrFAL3ZTiTIN65gPwWT82hFTaCCGtDh2+wr6/jFuDpAI8eixsVP9ZKv9YQeWtYnZ
	ZJb0l/vTnSYBWjrF9cUArvM3SJvFlQAd8VhJbh1A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656142612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=KuDhD8SFLBBcWaSoqvY2vLeVi5bSxQlUelU2HziA4hM=;
	b=FE7VemePUgDXjnHHv8Vr8x+2OOB9e3rpOz0Ad4eHFnXNMgYJeu80o/ajj+D2OeQA
	+v88oQGhTEG4SAslmKxK8hgsRuRrrv3Qg7QIUtJMSeGNsdZpTI+XFAZBDCetuwOa4Xq
	GCsp4/vWZyJOeWot6WIiK7N84zeqw7Bn1HQxy/kk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018199cac779-c18e212a-eda4-4c1a-8156-6521d938661f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: acbf5cd4e169ccde9992f592056dedc105193d62441b61ac70034b8b942ceb4c
Date: Sat, 25 Jun 2022 07:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.25-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656142612
