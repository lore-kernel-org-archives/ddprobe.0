Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F6A33C00
	for <ddprobe@lists.linux.dev>; Tue, 16 Aug 2022 23:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660690852;
	h=To:Subject:From:Message-Id:Date;
	bh=CEnX9+lOlJ3yCSt5BGB2sRw0nUs/Vt9mcrbaXOaSYrc=;
	b=Zrpvmh1fRRcnz/ybsylThXXxE2nzO8TallPFFKIVSbqR01S7BICqy21DbF6W3ykA
	CqbmPYN8em/CQqfbvGQbFbi16Z3lahUfXxY18u+xecCzFzEV/PejdqBur4/z46YM9qi
	arxEDPuLYGld/0XHe4w4WOb567ajjIiMRRu6UIaE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660690852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CEnX9+lOlJ3yCSt5BGB2sRw0nUs/Vt9mcrbaXOaSYrc=;
	b=RoAOLCa7zG7N85NxLyZWDbtrXcEiVGpl8Fa6W6wD8ERFf4SwW8dUzNXmqbrKYCOo
	fk8A6tdFAYTJm/z3HZ2vTsHS3GxnRW60aJ/7O4+jbdY0cqTwb72N1qkmmMlVBnEc05w
	/uGnVMVtg1YQ2Wr8yrbJQkL4cr4LfGQWmG5CENU4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a8e36ad7-4a888d17-3245-449e-bfdb-8536733c202d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9b42edf65d2371f6feab9b2f564512f26c1013c2c9c5dfeeb66d5e8a7118096d
Date: Tue, 16 Aug 2022 23:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.16-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660690852
