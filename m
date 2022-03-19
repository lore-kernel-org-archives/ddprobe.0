Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 932C9163
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 14:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647701785;
	h=To:Subject:From:Message-Id:Date;
	bh=6F0GzweIB8AUEighNPU9nn/rGO9YOO4lqza030CRpGQ=;
	b=CFYxBa8QO8i8RzhWiuNQIiJQiMUjhKdIvbeUHDCpVgl7If3Z/ZUpZrnh+pyU3Hfd
	u4Opgb0or+oaF5QWHTFOzsiGtoI6LHwJEJSvPkifKjHpDPAQUt4Mv9UvLn+MGsAs+uA
	U6Uern0fUwjDVQoBeZqGqABQVZCs3O43In3jiG84=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647701785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6F0GzweIB8AUEighNPU9nn/rGO9YOO4lqza030CRpGQ=;
	b=E0AOo8KI8V9N22Cd1+YfA+0pHzQTFaTra65MgsRDxRx/s9Y6tpBld1fD4cWbHRmp
	hxQkFPTrZZ1OgolxwzuXtVwR/b6iSi309lc0KEib85GhPoX9NO6LiWqy4SZY65e68xp
	Jh+ggVH25NtZPXUU7gWkAdUgzt1OxX55H6NRkgsw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa2adf8a6-cab60018-eabc-487b-a4ab-ed930a35f085-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 46dec5912e57a628a56043f2b5057ce39270b223a6f40eecfee01bd0d8345dd7
Date: Sat, 19 Mar 2022 14:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647701784
