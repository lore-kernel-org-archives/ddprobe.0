Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B70077F
	for <ddprobe@lists.linux.dev>; Sat, 12 Feb 2022 00:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644624632;
	h=To:Subject:From:Message-Id:Date;
	bh=hhSpVj5vh9vAb9V/CkVTqQodmVmYJK/w0DZGgoJ8iiI=;
	b=UMdr6p/mCNaGsSw3J4zhuZXl0vNJVBJnh9s5QrghlZzQ6SpGinBMb+Nec5MlOD2e
	9NJsnycLpPWa9qiVP51WW+TJ4sxQiku/DgkRXbNATlRvwujwZeczAqP8T1ya3UzNnT5
	NQtMCwDXBF4z8IoJ8SuaYbfhLgBYVJSdgjAv/MEU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644624632;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hhSpVj5vh9vAb9V/CkVTqQodmVmYJK/w0DZGgoJ8iiI=;
	b=epZga11fyibgCl0u0Ii5hP/kZaLKZYZTTOPg8ngu7K5ir4RsDYsCrHt6ZwZb3kwu
	gGkir0OGLK6Ag8d3ZpZdscv3XalqP2tTGUZY0OGwBiYffbXi4YvF6sYxXZVlc/ip5LR
	rO+c+1/JWsNmHRSvNBG0vme7zW3AxuT4A9UTJO8M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017eeb445ac9-67187e67-2caf-4219-bd15-ef4572620525-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4ea3aba4c83a44328daad97a8023c8b1bc1bf455819a9f04a256a1e1d1b79bd4
Date: Sat, 12 Feb 2022 00:10:32 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.12-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644624632
